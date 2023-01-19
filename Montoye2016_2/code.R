#This code was modified from the code provided in the article by Montoye et al. (https://doi.org/10.3934/publichealth.2016.2.298)
#Accessed February 2021 at https://drive.google.com/open?id=0B-BgdTzyd2OxazA1UE1zcTFEY1k


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
tryCatch(library(caret),error=function(e){install.packages("caret");library(caret)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Montoye2016_2/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in dataset
hip_prediction<-read.csv('sample_hip_data.csv',header=TRUE)
thigh_prediction<-read.csv('sample_thigh_data.csv',header=TRUE)
left_prediction<-read.csv('sample_left_data.csv',header=TRUE)
right_prediction<-read.csv('sample_right_data.csv',header=TRUE)
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in models
load("hip_PAintensity.RData")
load("thigh_PAintensity.RData")
load("left_PAintensity.RData")
load("right_PAintensity.RData")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Predicting PA intensity with the loaded ANN
hip_prediction<-predict(nnet_hip,hip_prediction)
thigh_prediction<-predict(nnet_thigh,thigh_prediction)
left_prediction<-predict(nnet_left,left_prediction)
right_prediction<-predict(nnet_right,right_prediction)
#-------------------------------------------------------------------------#