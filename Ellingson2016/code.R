#This code was modified from the code provided in the article by Ellingson et al. (https://doi.org/10.1249/MSS.0000000000000915)
#Accessed February 2021 at https://github.com/ischwabacher/SIP


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Ellingson/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#load the Sojourn functions and models
load("nnet3ests.RData")
load("cent.1.RData")
load("scal.1.RData")
load("class.nnn.use.this.RData")
source("sip.functions.R")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in sample datasets
#read in Actigraph data
actigraph <- AG.file.reader("sample_actigraph_data.csv")
#read in activpal data
activpal <- AP.file.reader("sampledata Events.csv")
#combine datasets
data <- enhance.actigraph(actigraph, activpal)
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Make predictions using Sojourn
sip.estimate <- sojourn.3x(data)
# save the output to your working directory
sojourns.file.writer(sip.estimate, "output.csv")
#-------------------------------------------------------------------------#