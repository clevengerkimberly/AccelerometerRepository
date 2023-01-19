#This code was modified from the code provided in the article by Lyden et al. (https://www.doi.org/10.1249/MSS.0b013e3182a42a2d)
#Accessed February 2021 at www.math.umass.edu/~jstauden/SojournCode.zip


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Lyden/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in models and functions
load("nnet3ests.RData")
load("cent.1.RData")
load("scal.1.RData")
load("class.nnn.use.this.Rdata")
#read in the R functions
source("sojourn.functions.R")


#-------------------------------------------------------------------------#
#read in dataset
data<-AG.file.reader('sample_data.csv')
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Predict MET-seconds with the loaded model
#using three axes
soj.3x.estimate <- sojourn.3x(data$counts,data$axis2,data$axis3,data$vm)
#using just the vertical axis
soj.1x.estimate <- sojourn.1x(data$counts)
#-------------------------------------------------------------------------#
