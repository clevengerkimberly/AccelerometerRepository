
# Below are functions that the script uses.

acf.lag1 <- function(x)
{
	
	n <- length(x)
	a <- mean((x[-1]-mean(x[-1]))*(x[-n]-mean(x[-n])))
	v <- var(x)
	if ((v==0)|(is.na(v)))
		val <- 0
	if ((v!=0)&(is.na(v)==F))
		val <- a/v
	return(val)	
}

	
sojourn.3x <- function(counts,counts.2,counts.3,vect.mag,short=30)
{
	y <- counts
	counts.2 <- counts.2
	counts.3 <- counts.3
			
	inds <- 1:length(y)

	mmm <- length(y)
	one <- y[-mmm]
	two <- y[-1]
	
	# find transitions
	
	trans <- ((one-two)>15)&(two<=10) 	# this is how i find initial transitions

	trans <- c(0,trans)
		
	trans.inds <- (1:mmm)[trans==1]
	
	# how long between transistions
	
	durations <- trans.inds[-1]-trans.inds[-length(trans.inds)]
	
	#	put first duration in and make last trans go till end of file
	
	dd <- length(durations)
	tt <- length(trans.inds)
	durations[dd+1] <- mmm-trans.inds[tt]
	dd <- length(durations)
	durations.junk <- trans.inds[1]
	durations <- c(durations.junk,durations)
	dd <- length(durations)
	
	durations.compare <- durations
	length(durations.compare)
	
	# get number of sojourns
	
	sojourns <- rep(1:length(durations),1)
	sojourns.long <- rep(sojourns,durations)
	mean.cnts.soj <- as.vector(tapply(y,sojourns.long,mean))
	
	# combine too short sojourns. 
	
	#	combine too short sojourns with neighboring sojourn.
	# 	this loop repeats until there are no more too short sojourns
	
	counter <- 1
	
repeat	# loop 1

	{
		too.short <- (1:dd)[durations<short]
		ts <- length(too.short)
		
		if(length(too.short)==0) 
			break
			
		if(length(too.short)>0)
	{
		
		
	# this loop deals with instances where the first too.short sojourn is first sojourn of file ie. it only has a second neighbor to combine it with
	
		counter.1 <- 1
		
	repeat	 # loop 2
		
		{
			
		if (too.short[counter.1]==counter.1)
		{
			sojourns[1:counter.1] <- sojourns[counter.1+1]
			
			counter.1 <- counter.1+1
			}
			
			if (too.short[counter.1]!=counter.1)
			
			break
			
			}	# end loop 2
			
	s <- length(sojourns)
	
	# this loop deals with if last too short sojourn is last sojourn of file ie. it only has a first neighbor to combine it with
			
	counter.2 <- s
	counter.ts <- ts
			
			repeat{
			
			if (too.short[counter.ts]==counter.2)
			{
			sojourns[counter.2:s] <- sojourns[counter.2-1]
			
			counter.2 <- counter.2-1
			counter.ts <- counter.ts-1
			}
			
			if (too.short[counter.ts]!=counter.2)
			
			break
			
			}	#end loop 3
			
			s <- length(sojourns)
			
	# now deal with all other too short sojourns
			
	junk.too.short <- too.short

	if(counter.ts<ts-1)
	{
	junk.too.short <- too.short[-(counter.ts+1:ts)]
	}
	if (counter.1>1)
	{
	junk.too.short <- junk.too.short[-(1:counter.1-1)]
	}

	j.t.s <- length(junk.too.short)
	
	first.neighbors <- junk.too.short-1
	second.neighbors <- junk.too.short+1

	#	right now i combine too short sojourns with its neighbor that was shorter in duration (e.g. first neighbor = 60 seconds long and second neighbor = 300 seconds long, it gets combined with first neighbor)

		revised.sojourns <- sojourns
		
		durations[junk.too.short]
	
		durations.first.neighbors <- durations[first.neighbors]
		durations.second.neighbors <- durations[second.neighbors]

	#	put in dummy duration for too.short sojourns at beginning and end of file
	durations.first.neighbors[is.na(durations.first.neighbors)] <- 100000
	durations.second.neighbors[is.na(durations.second.neighbors)] <- 100000
	
		n.neighbors <- length(durations.first.neighbors)
		n.neighbors.2 <- length(durations.second.neighbors)
		
		inds.first <- (1:n.neighbors)[durations.first.neighbors<=durations.second.neighbors]
		inds.second <- (1:n.neighbors)[durations.first.neighbors>durations.second.neighbors]

		too.short.inds.first <- junk.too.short[inds.first]
		too.short.inds.second <- junk.too.short[inds.second]

		revised.sojourns[too.short.inds.first] <- first.neighbors[inds.first]
		revised.sojourns[too.short.inds.second] <- second.neighbors[inds.second]

	# deal with instances where need to combine more than 2 sojourns - i.e. short sojourn became first neighbor, and then sojourn before first neighbor also becomes that sojourn via second neighbor grouping - want all 3 of these sojourns to be combined.
	
	rs <- length(revised.sojourns)
	
	one.order <- revised.sojourns[-rs]
	two.order <- revised.sojourns[-1]
	
	o <- length(one.order)

	inds.order <- (1:o)[one.order>two.order]
	if (length(inds.order>0))
	revised.sojourns[inds.order+1] <- revised.sojourns[inds.order]
	
	# get new durations now that sojourns are combined 

	rs <- length(revised.sojourns)
	revised.durations <- as.vector(tapply(durations,revised.sojourns,sum))
	
	rd <- length(revised.durations)
	
	# get new sojourns now that durations are combined 
	
	revised.sojourns <- rep(1:length(revised.durations),1)
	rs <- length(revised.sojourns)
	
	durations <- revised.durations
	dd <- length(durations)
	sojourns <- revised.sojourns
	s <- length(sojourns)
	
				}
	
#	print(counter)
	counter <- counter+1
	
		}	# end loop 1
		
	#	 make table of durations and sojourns etc
		
	trans.table <- data.frame(counts=y,counts.2=counts.2,counts.3=counts.3,vect.mag=vect.mag,sojourns=0,durations=0,perc.soj=NA,soj.type.all=NA,soj.mets.all=NA)
		
			tt <- dim(trans.table)[1]
		durations.1 <- rep(durations,durations)
		sojourns.1 <- rep(sojourns,durations)
		
		trans.table$durations <- durations.1
		trans.table$sojourns <- sojourns.1
	
	#	get percent non zero in table
		
		perc.soj <- tapply(y>0,sojourns.1,mean)

		perc.soj <- rep(perc.soj,durations)

		trans.table$perc.soj <- perc.soj
		
		
### get inds.inactivities so can test nnet only to distinguish between lifestyle and sedentary
		
#	now get inactivity indices

	inds.inacts <- (1:tt)[trans.table$perc.soj<0.7]
	inactivities <- trans.table[inds.inacts,]
	i.a <- dim(inactivities)[1]
	
	inact.trans.inds <- c(1,(1+(1:i.a)[inactivities$sojourns[-1]!=inactivities$sojourns[-i.a]]))

	inact.durations <- inactivities$durations[inact.trans.inds]
	
#	get nnetinputs for vertical axis

nnetinputs <- 
as.vector(unlist(tapply(inactivities$counts,inactivities$sojourns,quantile,probs=c(.1,.25,.5,.75,.9))))
length(nnetinputs)
nnetinputs <- matrix(nnetinputs,length(nnetinputs)/5,5,byrow=T)
nnetinputs <- as.data.frame(nnetinputs)
names(nnetinputs) <- c("X10.","X25.","X50.","X75.","X90.")
nnetinputs$acf <- 0

g <- 1
for (soj in unique(inactivities$sojourns))
{
	counts <- inactivities$counts[inactivities$sojourns==soj]
	
	
	if (sum(counts)>0)
	{
		temp <- acf(counts,lag.max=1,plot=F)
		nnetinputs$acf[g] <- as.numeric(unlist(temp[1,1])[1])
		
	}
	g <- g+1
#	print(g)
}

nnetinputs$acf[is.na(nnetinputs$acf)] <- 
		mean(nnetinputs$acf,na.rm=T)

	####	get nnetinputs.2 - second axis
	
	nnetinputs.2 <- 
as.vector(unlist(tapply(inactivities$counts.2,inactivities$sojourns,quantile,probs=c(.1,.25,.5,.75,.9))))
length(nnetinputs.2)
nnetinputs.2 <- matrix(nnetinputs.2,length(nnetinputs.2)/5,5,byrow=T)
nnetinputs.2 <- as.data.frame(nnetinputs.2)
names(nnetinputs.2) <- c("X10.2","X25.2","X50.2","X75.2","X90.2")
nnetinputs.2$acf.2 <- 0

g <- 1
for (soj in unique(inactivities$sojourns))
{
	counts <- inactivities$counts.2[inactivities$sojourns==soj]
	
	
	if (sum(counts)>0)
	{
		temp <- acf(counts,lag.max=1,plot=F)
		nnetinputs.2$acf.2[g] <- as.numeric(unlist(temp[1,1])[1])
		
	}
	g <- g+1
#	print(g)
}

nnetinputs.2$acf.2[is.na(nnetinputs.2$acf.2)] <- 
		mean(nnetinputs.2$acf.2,na.rm=T)

	
	####get nnetinputs.3 - third axis
	
	nnetinputs.3 <- 
as.vector(unlist(tapply(inactivities$counts.3,inactivities$sojourns,quantile,probs=c(.1,.25,.5,.75,.9))))
length(nnetinputs.3)
nnetinputs.3 <- matrix(nnetinputs.3,length(nnetinputs.3)/5,5,byrow=T)
nnetinputs.3 <- as.data.frame(nnetinputs.3)
names(nnetinputs.3) <- c("X10.3","X25.3","X50.3","X75.3","X90.3")
nnetinputs.3$acf.3 <- 0

g <- 1
for (soj in unique(inactivities$sojourns))
{
	counts <- inactivities$counts.3[inactivities$sojourns==soj]
	
	
	if (sum(counts)>0)
	{
		temp <- acf(counts,lag.max=1,plot=F)
		nnetinputs.3$acf.3[g] <- as.numeric(unlist(temp[1,1])[1])
		
	}
	g <- g+1
	#print(g)
}

nnetinputs.3$acf.3[is.na(nnetinputs.3$acf.3)] <- 
		mean(nnetinputs.3$acf.3,na.rm=T)

####get nnetinputs.vm - vector magnitude
	
	nnetinputs.vm <- 
as.vector(unlist(tapply(inactivities$vect.mag,inactivities$sojourns,quantile,probs=c(.1,.25,.5,.75,.9))))
length(nnetinputs.vm)
nnetinputs.vm <- matrix(nnetinputs.vm,length(nnetinputs.vm)/5,5,byrow=T)
nnetinputs.vm <- as.data.frame(nnetinputs.vm)
names(nnetinputs.vm) <- c("X10.vm","X25.vm","X50.vm","X75.vm","X90.vm")
nnetinputs.vm$acf.vm <- 0

g <- 1
for (soj in unique(inactivities$sojourns))
{
	counts <- inactivities$vect.mag[inactivities$sojourns==soj]
	
	
	if (sum(counts)>0)
	{
		temp <- acf(counts,lag.max=1,plot=F)
		nnetinputs.vm$acf.vm[g] <- as.numeric(unlist(temp[1,1])[1])
		
	}
	g <- g+1
	#print(g)
}

nnetinputs.vm$acf.vm[is.na(nnetinputs.vm$acf.vm)] <- 
		mean(nnetinputs.vm$acf.vm,na.rm=T)
	
	#	combine inputs so can center and scale
	
	inputs <- cbind(nnetinputs,nnetinputs.2)
	inputs <- cbind(inputs,nnetinputs.3)
	inputs <- cbind(inputs,nnetinputs.vm)
	inputs <- cbind(inputs,inact.durations)
	
	inputs <- scale(inputs,center=cent.1,scale=scal.1)
	inputs <- as.data.frame(inputs)
	
	#	predict type using all axes + vm.  i intially had a lot of prediction nnets here (ie different axis) but have removed them and only include the one that looks "the best".  there are definitely others we can use/try
	
	#	remove NA's
	
	inputs.1 <- inputs[,-(13)]
	inputs.1 <- inputs.1[,-(1:2)]
	
	cool.all <- predict(class.nnn.6,inputs.1)
	
	#	add soj.type to trans table
	
	junk.cool.all <- as.vector(apply(cool.all,1,which.max))
	
	cool.all <- rep(junk.cool.all,inact.durations)
	
	trans.table$soj.type.all[inds.inacts] <- cool.all	
#	assign mets to types.  
	
	trans.table$soj.mets.all[(trans.table$soj.type.all==1)&(trans.table$perc.soj<=0.12)] <- 1.5	
	trans.table$soj.mets.all[(trans.table$soj.type.all==1)&(trans.table$perc.soj>0.12)] <- 1.7	
	trans.table$soj.mets.all[(trans.table$soj.type.all==3)&(trans.table$perc.soj<=0.05)] <- 1	
	trans.table$soj.mets.all[(trans.table$soj.type.all==3)&(trans.table$perc.soj>0.05)] <- 1.2	

#	this identifies activities for nnet all - 6 means activity

	trans.table$soj.type.all[trans.table$perc.soj>=0.7] <- 6 
	
	inds.activity.all <- (1:tt)[(trans.table$perc.soj>=0.7)|(trans.table$soj.type.all==2)|(trans.table$soj.type.all==4)] 
	
	act.trans.table.all <- trans.table[inds.activity.all,]
	dim(act.trans.table.all)
	activity.durations.all <- table(act.trans.table.all$sojourns)
	
	quantiles.all <- tapply(act.trans.table.all$counts,act.trans.table.all$sojourns,quantile,p=c(.1,.25,.5,.75,.9))
	nn.trans.table.all <- as.data.frame(do.call("rbind",quantiles.all))

#	i realize i am getting lag1 differently than i do for inactivities...i should change to use function throughout.	
	nn.trans.table.all$acf <- tapply(act.trans.table.all$counts,act.trans.table.all$sojourns,acf.lag1)
	nn.trans.table.all <- nn.trans.table.all[,c(1:6)]

	names(nn.trans.table.all) <- c("X10.","X25.","X50.","X75.","X90.","acf")

	nnetinputs.acts.all <- scale(nn.trans.table.all,center=cent,scale=scal)
	
#	predict METs

	act.mets.all <- predict(reg.nn,nnetinputs.acts.all)
	act.mets.all <- rep(act.mets.all,activity.durations.all)

#	put back in table

	trans.table$soj.mets.all[inds.activity.all] <- act.mets.all

#	get breaks from sitting

#	trans.table$do.breaks <- 0
	trans.table$soj.breaks.all <- 0


	soj.posture <- as.vector(trans.table$soj.mets.all)
	s.p <- length(soj.posture)
	
	soj.one.posture <- soj.posture[-s.p]
	soj.two.posture <- soj.posture[-1]
	
	soj.trans <- (soj.one.posture<1.5)&(soj.two.posture>=1.5)
	soj.trans <- c(0,soj.trans)
	soj.trans.inds <- (1:s.p)[soj.trans==1]
	
	trans.table$soj.breaks.all <- soj.trans
#	sum(trans.table$soj.breaks.all)

	
	names(trans.table)[8:10] <- c("type","METs","break")
	
	trans.table <- trans.table[,-c(8,10)]
	
}	#	end sojourn



AG.file.reader <- function(filename,samp.freq=1)
{
	# assumes data start on row 11.
	# columns are c("VT","AP","ML","Steps","Lux","Inc")
	data <- readLines(filename,n=10)
	data <- unlist(strsplit(data, split=","))
	start.time <- data[3]
	start.time <- (strsplit(start.time, split=" ")[[1]][3])
	start.date <- data[4]
	start.date <- (strsplit(start.date, split=" ")[[1]][3])
	start.time <- as.POSIXlt(strptime(paste(start.date, start.time), "%m/%d/%Y %H:%M:%S"))
	data <- read.csv(filename,header=F,skip=10)
	data <- data[,-c(4,5)]
	n <- dim(data)[1]
	data[,4] <- sqrt(data[,1]^2+data[,2]^2+data[,3]^2)
	names(data) <- c("counts","axis2","axis3","vm")
	data$Time <- 999
	Time <- start.time + (0:(n-1)/samp.freq)

	data$Time <- as.character(as.factor(Time))


	return (data)
}


compute.bouts.info <- function(est.mets, units="secs") {
# est.mets is a vector of estimated METs
# units = "secs" or "mins" - the amount of time each entry in est.mets represents
	if(units == "secs") {
		time.units <- 60
	} else {
		time.units <- 1
	}

	mets.length <- length(est.mets)
	inds <- 1:mets.length
	one <- est.mets[-mets.length]
	two <- est.mets[-1]

	# number of transitions from <1.5 to >=1.5
	sed.to.gt.sed.trans <- sum((one<1.5)&(two>=1.5))

	# transitions from <3 to >=3
	trans.up <- (one<3)&(two>=3)

	# transitions from >=3 to <3
	trans.down <- (one>=3)&(two<3)
	trans <- c(0,trans.up+trans.down)
	trans.inds <- (1:mets.length)[trans==1]

	# indices where transitions take place
	trans.inds <- c(1, trans.inds, (mets.length+1))

	# how long are the periods of activity and inactivity
	durations <- trans.inds[-1]-trans.inds[-length(trans.inds)]

	# identify if interval is activity or inactivity (they alternate)
	types <- rep("inactive",length=length(durations))

	if (est.mets[1]<3)
		types <- rep(c("inactive","active"),length=length(durations))
	if (est.mets[1]>=3)
		types <- rep(c("active","inactive"),length=length(durations))

	# Create some empty vectors which will be used to keep track of the
	# start and end points of the bouts in the durations vector.
	bout.starts <- c()
	bout.ends <- c()

	# Bouts can occur in two ways:
	# 1) Multiple periods of >3 MET activity with one or more short periods or low activity in between.
	#    The combined time of low activity is 2 minutes or less and the total time 10 minutes or more.
	# 2) A period of 10 or more uninterrupted minutes of >3 MET activity with large periods of low activity before and after.

	# Search for bouts of the first type:

	# Find all sets of adjacent periods of inactivity with total duration less than 2 minutes.
	indices <- seq_len(length(durations))[types=="inactive"]

	for(i in indices) {
		# amount of inactive time in the current possible-bout
		current.bout.inactive.time <- 0
		# index of the last inactive period that will be included in the current possible-bout
		j <- i

		# add inactive periods to the right of the current starting index of our possible-bout,
		# until adding another would put us over the 2-minute limit
		nextvalue <- durations[i]
		while(current.bout.inactive.time + nextvalue <= 2*time.units) {
			current.bout.inactive.time <- current.bout.inactive.time + nextvalue
			j <- j + 2
			if( j <= length(durations) ) {
				# if we haven't yet reached the end of the durations vector,
				# increment j and get the next value
				nextvalue <- durations[j]
			} else {
				# if we have reached the end of the durations vector,
				# set nextvalue to a large number so we'll exit the loop
				nextvalue <- 2*time.units + 1
			}
		}
		# correct the value of j - we really didn't want to increment it that last time
		# since we ended up not including the corresponding inactive period in our possible-bout.
		j <- j - 2
	
		# if this possible bout would have already been found by starting from an earlier index, forget about it
		if(i > 2) {
			if(current.bout.inactive.time + durations[i - 2] <= 2*time.units) {
				current.bout.inactive.time <- 0
			}
		}
	
		# if we found a possible bout, record that information
		if(current.bout.inactive.time > 0) {
			# save the start position of the bout in the durations vector
			# (the bout starts at the period of activity preceeding the period of inactivity located at index i)
			# (unless i = 1, when there is no preceeding period of activity)
			if(i > 1) {
				bout.starts <- c(bout.starts, (i - 1))
			} else {
				bout.starts <- c(bout.starts, 1)
			}
	
			# save the end position of the bout in the durations vector
			# (the bout ends at the period of activity following the period of inactivity located at index j)
			# (unless j = length(durations), when there is no following period of activity)
			if(j < length(durations)) {
				bout.ends <- c(bout.ends, (j + 1))
			} else {
				bout.ends <- c(bout.ends, j)
			}
		}
	}


	# Out of the possible bouts located above, keep only those with total time of at least 10 minutes.
	keepers <- c()
	for(i in seq_len(length(bout.starts))) {
		if(sum(durations[bout.starts[i]:bout.ends[i]]) >= 10*time.units) {
			keepers <- c(keepers, i)
		}
	}

	bout.starts <- bout.starts[keepers]
	bout.ends <- bout.ends[keepers]


	# Check to see if any of the possible bouts above have overlapping start and end indices.
	# If so, keep the first and eliminate those that overlap with it.
	i <- 1
	while(i < length(bout.starts)) {
		if( bout.starts[i + 1] <= bout.ends[i] ) {
			bout.starts <- bout.starts[-(i + 1)]
			bout.ends <- bout.ends[-(i + 1)]
		} else {
			i <- i + 1
		}
	}



	# Search for bouts of the second type:
	indices <- seq_len(length(durations))[types=="active"]

	for(i in indices) {
		if(durations[i] >= 10*time.units) {
			# Is this a type 2 bout?  it might be..
			is.bout <- TRUE

			# If this period of activity is preceeded by a period of inactivity,
			# check to see how long that period of inactivity was.  If it was short,
			# this is a type 1 bout and will have been located above already
			if(i > 1) {
				if(durations[i - 1] <= 2*time.units) {
					is.bout <- FALSE
				}
			}

			# If this period of activity is followed by a period of inactivity,
			# check to see how long that period of inactivity was.  If it was short,
			# this is a type 1 bout and will have been located above already
			if(i < length(durations)) {
				if(durations[i + 1] <= 2*time.units) {
					is.bout <- FALSE
				}
			}

			# If this turned out to be a type 2 bout, add it to bout.starts and bout.ends
			if(is.bout) {
				bout.starts <- c(bout.starts, i)
				bout.ends <- c(bout.ends, i)
			}
		}
	}

	# Convert the values in bout.starts from indices in the durations vector
	# to the corresponding indices in the est.mets vector, and combine the values
	# into one vector to be used to extract the relevant seconds from est.mets
	indices <- c()

	for(i in seq_len(length(bout.starts))) {
		bout.starts[i] <- sum( durations[seq_len( bout.starts[i] - 1 )] ) + 1
		bout.ends[i] <- sum( durations[seq_len( bout.ends[i] )] )
		indices <- c(indices, bout.starts[i]:bout.ends[i])
	}

	num.bouts <- length(bout.starts)
	bout.hours <- length(indices)/(60*time.units)
	bout.MET.hours <- sum(est.mets[indices])/(60*time.units)
	info <- data.frame(num.bouts=num.bouts, bout.hours=bout.hours, bout.MET.hours=bout.MET.hours, sed.to.gt.sed.trans=sed.to.gt.sed.trans)
	
	return(info)
}


sojourn.1x <- function(counts,perc.cut=0.05,perc.cut.2=0.12,perc.cut.3=0.55,too.short=10,sit.cut=90,long.soj=120)
{
	
	y <- counts
	# identify sojourns.
	inds <- 1:length(y)

	mmm <- length(y)
	one <- y[-mmm]
	two <- y[-1]
	
	# transitions from 0 to >0
	trans.up <- (one==0)&(two>0)
	# transitions from >0 to 0
	trans.down <- (one>0)&(two==0)
	
	trans <- c(0,trans.up+trans.down)
	trans.inds <- (1:mmm)[trans==1]
			
	# indices where transitions take place
	trans.inds <- c(1,trans.inds,(mmm+1))
			
	# how long are the sojourns and the zeros
	durations <- trans.inds[-1]-trans.inds[-length(trans.inds)]
	
	# identify if interval is zeros or >0s (they alternate)
	type <- rep("zeros",length=length(durations))
	if (y[1]==0) 
		type <- rep(c("zeros","act"),length=length(durations))
	if (y[1]>0) 
		type <- rep(c("act","zeros"),length=length(durations))

	soj.table <- data.frame(type,durations,trans.inds=trans.inds[-length(trans.inds)])
	
	soj.table$act.type.1 <- "undetermined"
	soj.table$act.type.1[(soj.table$type=="zeros")&(soj.table$durations>sit.cut)] <- "sedentary"
	soj.table$act.type.1[(soj.table$type=="act")&(soj.table$durations>too.short)] <- "activity"
	
	
	
	# combine neighboring undetermineds
	mmm <- dim(soj.table)[1]
	prev.was.undet.inds <- 
		(2:mmm)[(soj.table$act.type.1[2:mmm]=="undetermined")&
					(soj.table$act.type.1[1:(mmm-1)]=="undetermined")]
	if (length(prev.was.undet.inds)>0)
		rev.soj.table <- soj.table[-prev.was.undet.inds,]
	mmm <- dim(rev.soj.table)[1]
	
	rev.soj.table$durations <- 
		c((rev.soj.table$trans.inds[-1]-
			rev.soj.table$trans.inds[-mmm]),
				rev.soj.table$durations[mmm])

	mmm <- dim(rev.soj.table)[1]

	# find too short undetermineds
	too.short.undet.inds <- (1:mmm)[(rev.soj.table$durations<too.short)&(rev.soj.table$act.type.1=="undetermined")]
	
	if (length(too.short.undet.inds)>0)
	{	
		while (too.short.undet.inds[1]==1)
		{	
			too.short.undet.inds <- too.short.undet.inds[-1]
			rev.soj.table <- rev.soj.table[-1,]
			rev.soj.table$trans.inds[1] <- 1
			mmm <- dim(rev.soj.table)[1]
			too.short.undet.inds <- too.short.undet.inds-1
		}
	
		last <- length(too.short.undet.inds)
		while (too.short.undet.inds[last]==mmm)
		{
			too.short.undet.inds <- too.short.undet.inds[-last]
			junk <- rev.soj.table$durations[(mmm-1)]
			rev.soj.table <- rev.soj.table[-mmm,]
			mmm <- dim(rev.soj.table)[1]
			rev.soj.table$durations[mmm] <- junk+rev.soj.table$durations[mmm]
			last <- length(too.short.undet.inds)
		}

		# short undetermineds between two acts of same type
		to.delete.inds <- 
			(too.short.undet.inds)[rev.soj.table$act.type.1[too.short.undet.inds-1]==rev.soj.table$act.type.1[too.short.undet.inds+1]]
		done.inds <- (1:length(too.short.undet.inds))[rev.soj.table$act.type.1[too.short.undet.inds-1]==rev.soj.table$act.type.1[too.short.undet.inds+1]]
		too.short.undet.inds <- too.short.undet.inds[-done.inds]

		# between two acts of different types
		junk <- rev.soj.table[too.short.undet.inds,]

		junk$act.type.1 <- "sedentary"
		junk$act.type.1[junk$type=="act"] <- "activity"
		rev.soj.table[too.short.undet.inds,] <- junk

		rev.soj.table <- rev.soj.table[-to.delete.inds,]


	}
	
	
	mmm <- dim(rev.soj.table)[1]
	junk <- c(rev.soj.table$act.type.1[2:mmm]==rev.soj.table$act.type.1[1:(mmm-1)])
	same.as.prev.inds <- (2:mmm)[junk]
	if (length(same.as.prev.inds)>0)
	{
		rev.soj.table <- rev.soj.table[-same.as.prev.inds,]
		mmm <- dim(rev.soj.table)[1]	
		rev.soj.table$durations <- 
			c((rev.soj.table$trans.inds[-1]-
				rev.soj.table$trans.inds[-mmm]),
					rev.soj.table$durations[mmm])
		last.obs <- rev.soj.table$durations[mmm]-1+rev.soj.table$trans.inds[mmm]
		
		if (last.obs != length(y))
			rev.soj.table$durations[mmm] <- length(y)-rev.soj.table$trans.inds[mmm]+1
			
	}
	
	trans.inds <- c(rev.soj.table$trans.inds,length(y)+1)
	durations <- trans.inds[-1]-trans.inds[-length(trans.inds)]

	soj.table <- data.frame(durations)

	sojourns <- rep(1:length(soj.table$durations),soj.table$durations)
	perc.gt.0 <- tapply(y>0,sojourns,mean)
	
	soj.table$perc.gt.0 <- perc.gt.0

	soj.table$revised.type <- "sit.still"
	soj.table$revised.type[soj.table$perc.gt.0>perc.cut.3] <- "activity"
	soj.table$revised.type[(soj.table$perc.gt.0>perc.cut)&(soj.table$perc.gt.0<=perc.cut.2)&(soj.table$durations>sit.cut)] <- "sit.move"
	soj.table$revised.type[(soj.table$perc.gt.0>perc.cut)&(soj.table$perc.gt.0<=perc.cut.2)&(soj.table$durations<=sit.cut)] <- "stand.still"
	soj.table$revised.type[(soj.table$perc.gt.0>perc.cut.2)&(soj.table$perc.gt.0<=perc.cut.3)] <- "stand.small.move"
	
	durations <- soj.table$durations
	type <- soj.table$revised.type
	
	sojourns <- rep(1:length(durations),durations)
	type <- rep(type,durations)
	perc.gt.0 <- rep(perc.gt.0,durations)
	durations <- rep(durations,durations)
	nnn <- length(sojourns)

	longer.acts <- unique(sojourns[(durations>(long.soj-1))])
			
	f <- function(s)
	{
		dur <- 	unique(durations[sojourns==s])
		sub.sojourns <- rep(1:floor(dur/(long.soj/2)),
			times=c(rep((long.soj/2),floor(dur/(long.soj/2))-1),
			dur-(floor(dur/(long.soj/2))-1)*(long.soj/2)))
		sub.sojourns <- s + sub.sojourns/(max(sub.sojourns)+1)
		return(sub.sojourns)
	}
	new.values <- sapply(longer.acts,f)
	starts <- sapply(match(longer.acts,sojourns),paste,":",sep="")
	ends <- length(sojourns) - match(longer.acts,rev(sojourns)) + 1
	indices <- mapply(paste,starts,ends,MoreArgs=list(sep=""),USE.NAMES=F)
	indices <- unlist(lapply(parse(text = indices), eval))
	sojourns[indices] <- unlist(new.values)
	
	# apply METs to zeros
	METs <- rep(NA,length(type))
	METs[(type=="sit.still")] <- 1
	METs[(type=="sit.move")] <- 1.2
	METs[(type=="stand.still")] <- 1.5
	METs[(type=="stand.small.move")] <- 1.7

	
	data <- data.frame(counts=y,sojourns=sojourns,durations=durations,type=type,METs=METs,perc.gt.0=perc.gt.0)
	
	# prepare to apply nnet to the activity sojourns
	nnn <- dim(data)[1]
	act.inds <- (1:nnn)[(data$type=="activity")]
	act.data <- data[act.inds,]
	act.durations <- table(act.data$sojourns)
			
	quantiles <- tapply(act.data$counts,act.data$sojourns,quantile,p=c(.1,.25,.5,.75,.9))
	nn.data <- as.data.frame(do.call("rbind",quantiles))
	nn.data$acf <- tapply(act.data$counts,act.data$sojourns,acf.lag1)
	nn.data <- nn.data[,c(1:6)]

	names(nn.data) <- c("X10.","X25.","X50.","X75.","X90.","acf")

	nnetinputs <- scale(nn.data,center=cent,scale=scal)
	
	# apply nnet and put it back into the dataset
	est.mets.1 <- NA #predict(MA.reg.nn,nnetinputs)
	est.mets.2 <- predict(ALL.reg.nn,nnetinputs)

	#act.mets.1 <- rep(est.mets.1,act.durations)
	act.mets.2 <- rep(est.mets.2,act.durations)
			
	data$METs <- METs
	data$METs.2 <- METs
	
	data$METs[act.inds] <- act.mets.2
	data$METs.2[act.inds] <- act.mets.2
	
	data$level <- "sed"
	data$level[data$METs>=1.5] <- "light"
	data$level[data$METs>=3] <- "mod"
	data$level[data$METs>=6] <- "vig"
	data$level <- factor(data$level,levels=c("sed","light","mod","vig"))

	data$level.2 <- "sed"
	data$level.2[data$METs.2>=1.5] <- "light"
	data$level.2[data$METs.2>=3] <- "mod"
	data$level.2[data$METs.2>=6] <- "vig"
	data$level.2 <- factor(data$level.2,levels=c("sed","light","mod","vig"))
	n <- dim(data)[1]
	inds <- (1:n)[data$METs<1]
	data$METs[inds] <- 1
	
	data <- data[,c(1,2,3,4,5,6,8)]
	data
}	



