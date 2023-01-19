#This code was modified from the code provided in the article by Montoye et al. (http://dx.doi.org/10.1016/j.jsams.2017.04.011)
#Accessed February 2021 at https://drive.google.com/open?id=0B-BgdTzyd2OxQllsS19wLXBNVjQ


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Montoye2017_2/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in model
load("APthighANN_FeatureSet2.RData")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in dataset
data<-read.csv("example_data.csv",header=TRUE)
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Predict EE with the loaded model
pred_activPAL<-predict(nnetAPthigh_FeatureSet2,data)
#-------------------------------------------------------------------------#