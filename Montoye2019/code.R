#This code was modified from the code provided in the article by Montoye et al. (https://doi.org/10.1123/jmpb.2018-0011)
#Accessed February 2021 at https://drive.google.com/file/d/1SlnXJBh6WUpxJJAjAovVbNw8hW54PhbZ/view


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Montoye2019/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in dataset
data<-read.csv('sample_data.csv',header=TRUE)
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#load the models
#hip count data model
load("hip_count.RData")
#hip raw data model
load("hip_raw.RData")
#wrist count data model
load("wrist_count.RData")
#wrist raw data model
load("wrist_raw.RData")
#hip and wrist count data model
load("combo_count.RData")
#hip and wrist raw data model
load("combo_raw.RData")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Predicting EE with the loaded ANN
#hip count data model
pred_hip_count<-predict(nnet_hip_count,data)
#hip raw data model
pred_hip_raw<-predict(nnet_hip_raw,data)
#wrist count data model
pred_wrist_count<-predict(nnet_wrist_count,data)
#wrist raw data model
pred_wrist_raw<-predict(nnet_wrist_raw,data)
#hip and wrist count data model
pred_combo_count<-predict(nnet_combo_count,data)
#hip and wrist raw data model
pred_combo_raw<-predict(nnet_combo_raw,data)
#-------------------------------------------------------------------------#