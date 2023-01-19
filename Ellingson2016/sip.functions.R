# sip.functions.R - estimate metabolic activity from accelerometer data
# Copyright (C) 2015 Isaac Schwabacher
# modified from work (C) 2014 John Staudenmayer
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

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

acf.lag1.alt <- function(x)
{
    acf(x, lag.max = 1, plot = FALSE)$acf[2, 1, 1]
}

replace.na <- function(x)
{
    # replace NA values with column means
    col.means <- colMeans(x, na.rm = TRUE)
    col.names <- rep(names(x), each = dim(x)[1])
    x[is.na(x)] <- col.means[col.names[is.na(x)]]
    return(x)
}

find.transitions <- function(y)
{
    N <- length(y)

    trans <- (-diff(y) > 15) & (y[-1] <= 10)
    trans.inds <- c(0,2:N,N)[c(TRUE,trans,TRUE)]
    durations <- diff(trans.inds)

    return(durations)
}

combine.sojourns <- function(durations, short)
{

    # combine too short sojourns.

    # FIXME:
    # I (IJS) think that this and find.transitions() are the weak point of the
    # method. Much improvement could be accomplished by making this smarter.
    # But my efforts to improve it haven't been that effective. If you have
    # lots of free-living training data and want to make SIP/Sojourns better,
    # focus on this!

    # Handle the case where the first or last sojourn is too short
    bool.too.short <- durations<short
    # If all sojourn durations are too short, glom them all.
    if(all(bool.too.short))
        return(sum(durations))
    counter.1 <- which.min(bool.too.short)
    counter.2 <- length(durations)+1-which.min(rev(bool.too.short))
    durations <- c(sum(durations[1:counter.1]),
                   durations[(counter.1+1):(counter.2-1)],
                   sum(durations[counter.2:length(durations)]))

    #   combine too short sojourns with neighboring sojourn.
    #   this loop repeats until there are no more too short sojourns

    repeat
    {
        sojourns <- 1:length(durations)
        too.short <- sojourns[durations<short]
        ts <- length(too.short)

        if(ts==0)
            break

        # now deal with all other too short sojourns
        #   right now i combine too short sojourns with its neighbor that was shorter in duration (e.g. first neighbor = 60 seconds long and second neighbor = 300 seconds long, it gets combined with first neighbor)

        durations.first.neighbors <- durations[too.short-1]
        durations.second.neighbors <- durations[too.short+1]

        too.short.inds.first <- too.short[durations.first.neighbors <=
                                          durations.second.neighbors]
        too.short.inds.second <- too.short[durations.first.neighbors >
                                           durations.second.neighbors]

        sojourns[too.short.inds.first] <- too.short.inds.first-1
        sojourns[too.short.inds.second] <- too.short.inds.second+1

        # deal with instances where need to combine more than 2 sojourns - i.e. short sojourn became first neighbor, and then sojourn before first neighbor also becomes that sojourn via second neighbor grouping - want all 3 of these sojourns to be combined.

        inds.order <- (1:(length(sojourns)-1))[diff(sojourns)<0]
        sojourns[inds.order+1] <- sojourns[inds.order]

        # get new durations now that sojourns are combined 

        durations <- as.vector(tapply(durations,sojourns,sum))

    }

    return(durations)
}

enhance.actigraph <- function(ag,ap)
{
    if(!require(zoo))
        stop("Can't load library zoo!")
    ap$ActivityBlocks <- cumsum(c(TRUE, as.logical(diff(ap$ActivityCode))))
    # It would be nice to leave the datasets as zoo objects, but this seems
    # like it could lead to problems by calling unexpected methods.
    # FIXME need to deal with mismatches in the times spanned by these data
    temp <- merge(zoo(NULL, ag$Time),
                  zoo(ap[c("ActivityCode", "ActivityBlocks",
                           "CumulativeStepCount")],
                      ap$Time - diff(ag$Time)[1]/2))
    temp[1,is.na(temp[1,])] <- 0
    ag[c("ActivityCode", "ActivityBlocks", "AP.steps")] <- na.locf(temp)[ag$Time]

    return(ag)
}

prep.nnetinputs <- function(ag, sojourns, lag.fun)
{
    inputs <- do.call(data.frame, aggregate(ag[1:4], list(sojourns),
        function(x)
        {
            c(X = quantile(x, probs = c(.1, .25, .5, .75, .9)),
              acf = lag.fun(x))
        })[-1])
    # for consistency with the existing data
    names(inputs) <- do.call(paste0, expand.grid(
        c(paste0("X", c(10, 25, 50, 75, 90)), "acf"), ".", c("", 2, 3, "vm")))
    names(inputs)[6] <- "acf"
    inputs$inact.durations <- tapply(sojourns, sojourns, length)
#    # The original code *appears* to replace NAs with column means, but
#    # *actually* the values that would have been NA are initialized to 0 and
#    # their computation is skipped.
    inputs[is.na(inputs)] <- 0
#    inputs[, paste0("acf", c("", ".2", ".3", ".vm"))] <-
#        replace.na(inputs[, paste0("acf", c("", ".2", ".3", ".vm"))])
    return(inputs)
}

sojourn.3x <- function(ag, short = 30)
{
    counts <- ag$counts
    counts.2 <- ag$axis2
    counts.3 <- ag$axis3
    vect.mag <- ag$vm
    y <- counts

    durations <- find.transitions(y)
    durations <- combine.sojourns(durations, short)
    sojourns <- rep(1:length(durations), durations)

    if("ActivityBlocks" %in% colnames(ag))
    {
        temp <- sojourns + ag$ActivityBlocks
        durations <- as.vector(tapply(temp, temp, length))
        durations <- combine.sojourns(durations, short)
        sojourns <- rep(1:length(durations), durations)
    }

    #    make table of durations and sojourns etc

    trans.table <- data.frame(counts = y,
                              counts.2 = counts.2,
                              counts.3 = counts.3,
                              vect.mag = vect.mag,
                              sojourns = sojourns,
                              durations = rep(durations, durations),
                              perc.soj = NA,
                              type = NA,
                              METs = NA,
                              steps = diff(c(0, ag$steps)))

    soj.table <- data.frame(durations = durations,
                            perc.soj = tapply(ag$counts > 0, sojourns, mean),
                            type = 6,
                            METs = NA)

    #   get percent non zero in table


### get inds.inactivities so can test nnet only to distinguish between lifestyle and sedentary

    inputs <- prep.nnetinputs(ag[soj.table$perc.soj[sojourns] < 0.7,],
                              sojourns[soj.table$perc.soj[sojourns] < 0.7],
                              acf.lag1.alt)

    inact.inputs <- as.data.frame(scale(inputs,
                                        center = cent.1,
                                        scale = scal.1))
    rownames(inact.inputs) <- NULL

    #   predict type using all axes + vm.  i intially had a lot of prediction nnets here (ie different axis) but have removed them and only include the one that looks "the best".  there are definitely others we can use/try

    #   remove NaNs created by scaling by 1/0
    inact.inputs <- inact.inputs[,-c(1, 2, 13)]

    #   add soj.type to trans table

    soj.table$type[soj.table$perc.soj < 0.7] <-
        apply(predict(class.nnn.6, inact.inputs), 1, which.max)

#   assign mets to types.

    if("ActivityCode" %in% colnames(ag))
    {
        # bout marked sedentary by activPAL?
        temp <- aggregate(ag$ActivityCode == 0, list(sojourns), mean)$x >= 0.5
        soj.table$type[soj.table$type %in% c(1, 3)] <-
            # 3 if sedentary, 1 if not
            ifelse(temp[soj.table$type %in% c(1, 3)], 3, 1)
    }

    soj.table$METs[(soj.table$type==1)&(soj.table$perc.soj<=0.12)] <- 1.5
    soj.table$METs[(soj.table$type==1)&(soj.table$perc.soj>0.12)] <- 1.7
    soj.table$METs[(soj.table$type==3)&(soj.table$perc.soj<=0.05)] <- 1
    soj.table$METs[(soj.table$type==3)&(soj.table$perc.soj>0.05)] <- 1.2

#   this identifies activities for nnet all - 6 means activity
#   i realize i am getting lag1 differently than i do for inactivities...i should change to use function throughout.
    inputs <- prep.nnetinputs(ag[soj.table$type[sojourns] %in% c(2, 4, 6),],
                              sojourns[soj.table$type[sojourns] %in% c(2, 4, 6)],
                              acf.lag1)
    act.inputs <- inputs[c("X10.","X25.","X50.","X75.","X90.","acf")]
    rownames(act.inputs) <- NULL
    act.inputs <- as.data.frame(scale(act.inputs, center = cent, scale = scal))

#   predict METs

    act.mets.all <- predict(reg.nn,act.inputs)
    soj.table$METs[is.na(soj.table$METs)] <- act.mets.all

#   put back in table

    trans.table$perc.soj <- soj.table$perc.soj[sojourns]
    trans.table$type <- soj.table$type[sojourns]
    trans.table$METs <- soj.table$METs[sojourns]

    trans.table <- trans.table[,-8] # remove $type
    if("ActivityCode" %in% names(ag))
    {
        trans.table$ActivityCode <- ag$ActivityCode
        trans.table$AP.steps <- diff(c(0, ag$AP.steps))
    }
    row.names(trans.table) <- strftime(ag$Time, "%Y-%m-%dT%H:%M:%S%z")
    header <- attr(ag, "AG.header")
    header <- append("Processed with sojourns", header, length(header)-1)
    attr(trans.table, "AG.header") <- header
    return(trans.table)
}   #   end sojourn

sojourns.file.writer <- function(data, filename)
{
    out <- file(filename, open = "w")
    tryCatch(
        {
            writeLines(attr(data, "AG.header"), con = out)
            write.csv(data, file = out)
        }, finally = close(out))
}

AP.file.reader <- function(filename)
{
    # read an activPAL events file.
    opt <- options(stringsAsFactors = FALSE)
    deffile <- sub(" Events\\.csv", ".def", filename)
    header <- read.csv(deffile, header = FALSE, row.names = 1)
    # I refuse to believe that there isn't a better way to do this.
    header <- as.list(as.data.frame(t(header)))

    start.time <- as.POSIXlt(strptime(header$StartTime, "#%Y-%m-%d %H:%M:%S#"))
    samp.freq <- as.numeric(header$SamplingFrequency)

    data <- read.csv(filename)
    # Test whether the timeseries starts at a whole second boundary.
    # This is here because I want to be lazy and see if I need to handle the
    # case where it does not.
    # Update: Never mind, this is useless because the Excel timestamp doesn't
    # always have enough significant figures
#    if(round(data$Time[1] %% 1 * 24*60*60 * samp.freq) %% samp.freq)
#        warning("ActivPAL time series is offset by a fraction of a second.")

    n <- dim(data)[1]
    # We use the start time in the header rather than converting the Excel dates
    # in the data set because Excel pretends DST doesn't exist.
    # This wouldn't work if the data started at a fractional second; hence the
    # test above
    data$Time <- start.time + data$DataCount / samp.freq
    # This should be less fragile but I'm lazy.
    names(data) <- c("Time", "DataCount", "Interval", "ActivityCode",
                     "CumulativeStepCount", "ActivityScore")

    options(opt)
    return(data)
}

AG.file.reader <- function(filename)
{
    # I suspect there's a less verbose way to do this, but I couldn't find it.
    agfile <- file(filename)
    header <- character()
    open(agfile)
    # The regex functions feel like overkill here...
    while(!grepl("^-*$", line <- readLines(agfile, n=1)))
    {
        header <- c(header, line)
        if((temp <- sub("^Start Time ", "", line)) != line)
            start.time <- temp
        if((temp <- sub("^Start Date ", "", line)) != line)
            start.date <- temp
        if((temp <- sub("^Epoch Period \\(hh:mm:ss\\) ", "", line)) != line)
            epoch.period <- temp
    }
    header <- c(header, line)
    start.time <- as.POSIXlt(strptime(paste(start.date, start.time),
                                      "%m/%d/%Y %H:%M:%S"))

    first.line <- readLines(agfile, n=1)
    hasHeader <- substr(first.line, 1, 4) == "Date"
    pushBack(first.line, agfile)

    data <- read.csv(agfile, header = hasHeader)
    close(agfile)

    n <- dim(data)[1]

    if(hasHeader)
    {
        data <- data[,c(paste0("Axis", 1:3), "Vector.Magnitude", "Steps")]
        # Testing this.  Maybe we shouldn't trust the device?
        data$Vector.Magnitude <- sqrt(rowSums(data[,1:3]^2))
    }
    else
    {
        data <- data[,c(1:3, 4, 4)]
        data[,4] <- sqrt(rowSums(data^2))
    }

    names(data) <- c("counts", "axis2", "axis3", "vm", "steps")
    data$steps <- cumsum(data$steps)
    data$Time <- start.time + (0:(n-1))*as.difftime(epoch.period)

    # This is bad form, but works in a pinch
    attr(data, "AG.header") <- header
    return(data)
}
