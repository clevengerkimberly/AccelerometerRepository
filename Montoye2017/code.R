#This code was modified from the code provided in the article by Montoye et al. (https://doi.org/10.1080/1091367X.2017.1337638)
#Accessed February 2021 at https://drive.google.com/file/d/0B-BgdTzyd2OxUDhwRWR6OTJwZmM/edit


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Montoye2017/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in dataset
ankle_data<-read.csv('sample_ankle_data.csv',header=TRUE)
hip_data<-read.csv('sample_hip_data.csv',header=TRUE)
right_data<-read.csv('sample_right_data.csv',header=TRUE)
left_data<-read.csv('sample_left_data.csv',header=TRUE)
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in models
load("V1V2_Ank.RData")
load("V1V2_Hip.RData")
load("V1V2_LW.RData")
load("V1V2_RW.RData")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Predicting EE with the loaded ANN
pred_ankle<-predict(nnet_V12_Ank,ankle_data)
pred_hip<-predict(nnet_V12_Hip,hip_data)
pred_left<-predict(nnet_V12_LW,left_data)
pred_right<-predict(nnet_V12_RW,right_data)
#-------------------------------------------------------------------------#