#This code was modified from the code provided in the article by Montoye et al. (https://doi.org/10.1088/0967-3334/37/10/1770)
#Accessed February 2021 at https://drive.google.com/open?id=0B-BgdTzyd2OxRDZTQWVxZW1qMzA


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Montoye2016_3/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in dataset
example_left<-read.csv('sample_left_data.csv',header=TRUE)
example_right<-read.csv('sample_right_data.csv',header=TRUE)
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in models
#models labeled 'raw' use mean and variance of raw accelerometer signal for each axis
load("raw_L.RData")
load("raw_R.RData")
#models labeled 'VM' use mean and variance of VM of accelerometer signal for each axis
load("VM_L.RData")
load("VM_R.RData")
#models labeled 'ABS' use mean and variance of absolute value of accelerometer signal for each axis
load("ABS_L.RData")
load("ABS_R.RData")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Predicting EE with the loaded ANN
pred_raw_L<-predict(nnet_raw_L,example_left)
pred_raw_R<-predict(nnet_raw_R,example_right)
pred_abs_L<-predict(nnet_ABS_L,example_left)
pred_abs_R<-predict(nnet_ABS_R,example_right)
pred_vm_L<-predict(nnet_VM_L,example_left)
pred_vm_R<-predict(nnet_VM_R,example_right)
#-------------------------------------------------------------------------#