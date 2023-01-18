#This code was modified from the code provided in the article by Bai et al. (http://doi.org/10.1371/journal.pone.0160644)
#Accessed February 2021 at https://github.com/javybai/ActivityIndex

#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(ActivityIndex),error=function(e){install.packages("ActivityIndex");library(ActivityIndex)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Bai/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in sample dataset
#dataset can be in one of two formats
#csv with just raw acceleration data, no headers
sample_data<-ReadTable("sample_data.csv")
#csv in the ActiGraph format (10 lines of header information then raw acceleration in each axis)
sample_data_2<-ReadGT3XPlus("sample_data_2.csv")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#enter the desired epoch and the sampling rate in Hertz
#enter the epoch in seconds below (examples: 1,5,10,60)
epoch<-1
#enter the sampling rate (in Hertz) below (examples:10,30,60,100)
samplingrate<-30
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#calculate sigma0 which is needed to then calculate activity index (AI)
#there are two options. Both require a period of time when you know the monitor is not worn or is still
#in the code below, 1004700 is the row this period of time starts
#1005600 is the row when this period ends

##option 1: use the x_sigma0 command to calculate sigma for a time
#when you know the monitor is still or not being worn
AIoutput<-computeActivityIndex(sample_data, x_sigma0 = sample_data[1004700:1005600, ],
                     epoch = epoch, hertz = samplingrate)

#option 2: use the Sigma0 command to use a sigma value you calculated beforehand
#this sigma can be calculated ahead of time using the Simga0 function
#this would also be a good option if you plan to use one sigma value across multiple files/times/etc
sample_sigma0 = Sigma0(sample_data[1004700:1005600, ],
                       hertz = samplingrate)
AIoutput2<-computeActivityIndex(sample_data, sigma0=sample_sigma0,
                        epoch = epoch, hertz = samplingrate)
#-------------------------------------------------------------------------#
