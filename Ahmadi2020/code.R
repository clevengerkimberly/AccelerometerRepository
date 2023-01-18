#This code was modified from the code provided in the article by Ahmadi et al. (https://doi.org/10.1371/journal.pone.0233229)
#Accessed February 2021 at https://github.com/MA-QUT/Preschool_EE_Models_PLOS_One


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(kernlab),error=function(e){install.packages("kernlab");library(kernlab)})
tryCatch(library(randomForest),error=function(e){install.packages("randomForest");library(randomForest)})
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
tryCatch(library(RCurl),error=function(e){install.packages("RCurl");library(RCurl)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Ahmadi/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in sample dataset
wrist_data<-read.csv("example_wrist_data.csv")
hip_data<-read.csv("example_hip_data.csv")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Wrist Models
#either support vector machine or random forest

#load support vector machine wrist model
load("wrist_svm.RData")
featurenames<-rownames(data.frame(wrist_svm$svmmodel@scaling$x.scale))
#Identify the features needed for the wrist SVM model from the dataset
test_wristsvm<-wrist_data[,c(which(colnames(wrist_data)%in%featurenames))]
#Normalize feature set values
test_wristsvm<-scale(test_wristsvm,center = wrist_svm$PreProcess_mean,scale = wrist_svm$PreProcess_std)
#Make predictions on new data
predict_wristsvm<-predict(wrist_svm$svmmodel,test_wristsvm)



#load random forest wrist model
load("wrist_rf.RData")
featurenames<-wrist_rf$xNames
#Identify the features needed for the wrist RF model from the dataset
test_wristrf<-wrist_data[,c(which(colnames(wrist_data)%in%featurenames))]
#Make predictions on new data
predict_wristrf<-predict(wrist_rf,wrist_data)

#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Hip Models
#either the artificial neural network or random forest model

#load artificial neural network hip model
load("hip_ann.RData")
featurenames<-hip_ann$coefnames
#Identify the features needed for the hip ANN model from the dataset
test_hipann<-hip_data[,c(which(colnames(hip_data)%in%featurenames))]
#Make predictions on new data
predict_hipann<-predict(hip_ann,hip_data)



#load random forest hip model
load("hip_rf.RData")
featurenames<-hip_rf$xNames
#Identify the features needed for the wrist RF model from the dataset
test_hiprf<-hip_data[,c(which(colnames(hip_data)%in%featurenames))]
#Make predictions on new data
predict_hiprf<-predict(hip_rf,hip_data)
#-------------------------------------------------------------------------#



