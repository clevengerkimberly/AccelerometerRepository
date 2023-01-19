#This code was generated for use with the models provided with the article by Montoye et al. (https://doi.org/10.1249/mss.0000000000000597)
#Accessed February 2021 at https://sites.google.com/site/alexmontoye/machine-learning-model-code


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Montoye2015/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in dataset
sample_data<-read.csv('sample_data.csv',header=TRUE)
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in models
load("AGhipANN_FeatureSet1.RData")
load("AGhipANN_FeatureSet2.RData")
load("AGhipANN_FeatureSet3.RData")
load("AGhipANN_FeatureSet4.RData")
load("AGthighANN_FeatureSet1.RData")
load("AGthighANN_FeatureSet2.RData")
load("AGthighANN_FeatureSet3.RData")
load("AGthighANN_FeatureSet4.RData")
load("GEleftANN_FeatureSet1.RData")
load("GEleftANN_FeatureSet2.RData")
load("GEleftANN_FeatureSet3.RData")
load("GEleftANN_FeatureSet4.RData")
load("GErightANN_FeatureSet1.RData")
load("GErightANN_FeatureSet2.RData")
load("GErightANN_FeatureSet3.RData")
load("GErightANN_FeatureSet4.RData")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Predicting EE with the loaded ANN
pred_AGhip_feature1<-predict(nnetAGhip_FeatureSet1,sample_data)
pred_AGhip_feature2<-predict(nnetAGhip_FeatureSet2,sample_data)
pred_AGhip_feature3<-predict(nnetAGhip_FeatureSet3,sample_data)
pred_AGhip_feature4<-predict(nnetAGhip_FeatureSet4,sample_data)
pred_AGthigh_feature1<-predict(nnetAGthigh_FeatureSet1,sample_data)
pred_AGthigh_feature2<-predict(nnetAGthigh_FeatureSet2,sample_data)
pred_AGthigh_feature3<-predict(nnetAGthigh_FeatureSet3,sample_data)
pred_AGthigh_feature4<-predict(nnetAGthigh_FeatureSet4,sample_data)
pred_GEright_feature1<-predict(nnetGEright_FeatureSet1,sample_data)
pred_GEright_feature2<-predict(nnetGEright_FeatureSet2,sample_data)
pred_GEright_feature3<-predict(nnetGEright_FeatureSet3,sample_data)
pred_GEright_feature4<-predict(nnetGEright_FeatureSet4,sample_data)
pred_GEleftt_feature1<-predict(nnetGEleft_FeatureSet1,sample_data)
pred_GEleft_feature2<-predict(nnetGEleft_FeatureSet2,sample_data)
pred_GEleft_feature3<-predict(nnetGEleft_FeatureSet3,sample_data)
pred_GEleft_feature4<-predict(nnetGEleft_FeatureSet4,sample_data)
#-------------------------------------------------------------------------#