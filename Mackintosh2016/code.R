#This code was modified from the code provided in the article by Mackintosh et al. (https://doi.org/10.1088/0967-3334/37/10/1728)
#Accessed February 2021 at https://sites.google.com/site/alexmontoye/machine-learning-model-code


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Mackintosh/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in dataset
sample_data<-read.csv('sample_data.csv',header=TRUE)
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in models
load("ALL.RData")
load("C.RData")
load("C_RH_RA.RData")
load("C_RK_RW_RH.RData")
load("LA.RData")
load("LH.RData")
load("LK.RData")
load("LW.RData")
load("RA.RData")
load("RH.RData")
load("RK.RData")
load("RW.RData")
load("RW_RK.RData")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Predicting EE with the loaded ANN
pred_all<-predict(nnet3_ALL_005,sample_data)
pred_c<-predict(nnet3_C_005,sample_data)
pred_c_rh_ra<-predict(nnet3_C_RH_RA_005,sample_data)
pred_c_rk_rw_rk<-predict(nnet3_C_RK_RW_RH_005,sample_data)
pred_la<-predict(nnet3_LA_005,sample_data)
pred_lh<-predict(nnet3_LH_005,sample_data)
pred_lk<-predict(nnet3_LK_005,sample_data)
pred_lw<-predict(nnet3_LW_005,sample_data)
pred_ra<-predict(nnet3_RA_005,sample_data)
pred_rh<-predict(nnet3_RH_005,sample_data)
pred_rk<-predict(nnet3_RK_005,sample_data)
pred_rw<-predict(nnet3_RW_005,sample_data)
pred_rw_rk<-predict(nnet3_RW_RK_005,sample_data)
#-------------------------------------------------------------------------#