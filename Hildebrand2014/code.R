#This code was modified from the code provided in the article by Hildebrand et al. (http://doi.org/10.1249/MSS.0000000000000289)
#Accessed February 2021 at http://links.lww.com/MSS/A367


#-------------------------------------------------------------------------#
#In the function below, change the following four inputs:
#samplefrequency is sampling rate in Hertz (examples: 10,30,100)
#datapath indicates where the accelerometer files are stored. In this code, enter the filepath without the ending forward slash /
#accelerometer files need to be in one folder (with no other file types present)
#outputpath is where you want the processed data stored, again enter outputpath without the ending forward slash /
#window is the epoch over which you want ENMO calculated (examples: 1,5,10,60)
#Nothing else needs changed
#then scroll down (past the function) and run one additional line of code

getENMO = function(samplefrequency=30) {
  
  ##################################################################################
  #modification needed by user:
  
  datapath = "C:/Users/cleve/Dropbox/Repository/Hildebrand/sample_data" #where did you store the csv-formatted data?
  outputpath = "C:/Users/cleve/Dropbox/Repository/Hildebrand" #where does output need to be stored?
  window = 1 #to how many seconds would you like the data to be summarised?
  
  
  ###################################################################################
  # no modification needed by user:
  fnames = dir(datapath)
  print(paste("Selected window size = ",window,"second(s)",sep=""))
  for (i in 1:length(fnames)) {
    print(paste("processing file ",i," out of ",length(fnames),"...",sep=""))
    INFI = inspectfile(datapath,fname=fnames[i]) #detect data format and monitor type
    mon = INFI$mon; dformat = INFI$dformat; fs = INFI$fs
    if (fs == 0) {
      fs = samplefrequency
      print(paste("samplefrequency not available inside the data file. Instead now using ",samplefrequency," Hertz",sep=""))
    }
    decn =dotorcomma(datapath,fnam=fnames[i],dformat,mon) #detect whether data is stored with comma or do
    
    
    if (mon == 2) { #Geneactive
      A = read.csv(paste(datapath,"/",fnames[i],sep=""),dec=decn,skip=100)
      starttime = as.character(A[1,1])
      starttime = as.POSIXlt(starttime)
      time1 = seq(starttime,(starttime+floor((nrow(A)-100)/fs)),by=(window))
      time2 = as.POSIXct(time1,origin="1970-01-01",tz="GMT")	
    } else if (mon == 3)  { #Actigraph
      A = read.csv(paste(datapath,"/",fnames[i],sep=""),dec=decn,skip=10)
      starttime = as.character(A[1,1])
      starttime_a = as.POSIXlt(starttime,format='%d.%m.%Y %H:%M:%S')
      starttime_b = as.POSIXlt(starttime,format='%d/%m/%Y %H:%M:%S')
      
      if (is.na(starttime_a) == T) {
        starttime = starttime_b
      } else {
        starttime = starttime_a
      }
      time1 = seq(starttime,(starttime+floor((nrow(A)-10)/fs)),by=(window))
      time2 = as.POSIXct(time1,origin="1970-01-01",tz="GMT")		
    }
    time2 = time2[1:(length(time2)-1)]
    Gx = A[,2]; 	Gy = A[,3]; 	Gz = A[,4]
    ENMO = sqrt(Gx^2 + Gy^2 + Gz^2) - 1
    ENMO[which(ENMO < 0)] = 0
    ENMO2 = cumsum(ENMO)
    ENMO3 = diff(ENMO2[seq(1,length(ENMO),by=(fs*window))]) / (fs*window)
    ENMO4 = matrix(0,length(time2),2)
    ENMO4[,1] = as.character(time2) #time
    if (length(ENMO3) <= nrow(ENMO4)) {
      ENMO4[1:length(ENMO3),2] = ENMO3 #acceleration
    } else {
      ENMO4[,2] = ENMO3[1:nrow(ENMO4)] #acceleration
    }
    write.csv(ENMO4,paste(outputpath,"/converted_to_",window,"_second_window_for file_",fnames[i],sep=""))
  }
}
dotorcomma = function(path,fnam,dformat,mon) {
  if (dformat == 2) {
    deci = read.csv(paste(path,"/",fnam,sep=""),skip = 100,nrow=10)
    deci = as.matrix(deci)
    if(is.na(suppressWarnings(as.numeric(deci[2,2]))) == T) {
      decn = "," #comma
    } else {
      decn = "." #dot
    }
  } else if (dformat == 1) { #!decn is detect, but currently not used in the rest of the code!
    print("Data not processed because not stored in csv-format.")
  }
  dotorcomma = decn
  
}

#function to inspect the file and to assess from which brand it is and what the format is
inspectfile = function(path,fname) {
  fs = c(); isitageneactive = c();	isitagenea = c();  mon = c() #generating empty variables
  tmp1 = unlist(strsplit(fname,".c"))
  tmp2 = unlist(strsplit(fname,".b"))
  if (tmp1[length(tmp1)] == "sv") { #this is a csv file
    dformat = 2 #2 = csv
    testcsv = read.csv(paste(path,"/",fname,sep=""),nrow=10,skip=10)
    if (ncol(testcsv) == 2) { #it is a geneactivefile
      mon = 2
    } else if (ncol(testcsv) == 4) {	#it is an actigraph file
      mon = 3
    }
  } else if (tmp2[length(tmp2)] == "in") { 		#this is a bin file
    dformat = 1 #1 = binary
  }
  
  if (dformat == 1) {
    print("Data not processed because not stored in csv-format.")
  } else if (dformat == 2) { #no checks for corrupt file yet...maybe not needed for csv-format?
    if (mon == 2) {
      tmp = read.csv(paste(path,"/",fname,sep=""),nrow=50,skip=0)
      fs = as.character(tmp[which(as.character(tmp[,1]) == "Measurement Frequency"),2])
      fs = as.numeric(unlist(strsplit(fs," "))[1])
    } else if (mon == 3) {
      tmp0 = read.csv(paste(path,"/",fname,sep=""),nrow=9,skip=0,)
      tmp = colnames(tmp0)
      tmp2 = as.character(unlist(strsplit(tmp,".Hz"))[1])
      tmp3 = as.character(unlist(strsplit(tmp2,"yy.at.")))
      fs = as.numeric(tmp3[2])
      
    }
  }
  invisible(list(dformat=dformat,mon=mon,fs=fs))
}
#-------------------------------------------------------------------------#

getENMO()
