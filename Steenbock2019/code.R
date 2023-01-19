#This code was modified from the code provided in the article by Steenbock et al. (https://doi.org/10.1123/jmpb.2018-0032)
#Accessed February 2021 at https://github.com/bips-hb/EE_prediction


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(mlr),error=function(e){install.packages("mlr");library(mlr)})
tryCatch(library(data.table),error=function(e){install.packages("data.table");library(data.table)})
tryCatch(library(lme4),error=function(e){install.packages("lme4");library(lme4)})
tryCatch(library(ranger),error=function(e){install.packages("ranger");library(ranger)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Steenbock/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in models
#ActiGraph left hip
lm_actigraph_left_model<-readRDS("lm_actigraph_left_METs_30s.Rds")
mlm_actigraph_left_model<-readRDS("mlm_actigraph_left_METs_30s.Rds")
nn_actigraph_left_model<-readRDS("nn_actigraph_left_METs_30s.Rds")
rf_actigraph_left_model<-readRDS("rf_actigraph_left_METs_30s.Rds")

#ActiGraph right hip
lm_actigraph_right_model<-readRDS("lm_actigraph_right_METs_30s.Rds")
mlm_actigraph_right_model<-readRDS("mlm_actigraph_right_METs_30s.Rds")
nn_actigraph_right_model<-readRDS("nn_actigraph_right_METs_30s.Rds")
rf_actigraph_right_model<-readRDS("rf_actigraph_right_METs_30s.Rds")

#GENEActiv right hip
lm_geneactiv_hip_model<-readRDS("lm_geneactiv_hip_right_METs_30s.Rds")
mlm_geneactiv_hip_model<-readRDS("mlm_geneactiv_hip_right_METs_30s.Rds")
nn_geneactiv_hip_model<-readRDS("nn_geneactiv_hip_right_METs_30s.Rds")
rf_geneactiv_hip_model<-readRDS("rf_geneactiv_hip_right_METs_30s.Rds")

#GENEActiv left wrist
lm_geneactiv_left_model<-readRDS("lm_geneactiv_wrist_left_METs_30s.Rds")
mlm_geneactiv_left_model<-readRDS("mlm_geneactiv_wrist_left_METs_30s.Rds")
nn_geneactiv_left_model<-readRDS("nn_geneactiv_wrist_left_METs_30s.Rds")
rf_geneactiv_left_model<-readRDS("rf_geneactiv_wrist_left_METs_30s.Rds")

#GENEActiv right wrist
lm_geneactiv_right_model<-readRDS("lm_geneactiv_wrist_right_METs_30s.Rds")
mlm_geneactiv_right_model<-readRDS("mlm_geneactiv_wrist_right_METs_30s.Rds")
nn_geneactiv_right_model<-readRDS("nn_geneactiv_wrist_right_METs_30s.Rds")
rf_geneactiv_right_model<-readRDS("rf_geneactiv_wrist_right_METs_30s.Rds")

#ActivPal right thigh
lm_activpal_thigh_model<-readRDS("lm_activpal_METs_30s.Rds")
mlm_activpal_thigh_model<-readRDS("mlm_activpal_METs_30s.Rds")
nn_activpal_thigh_model<-readRDS("nn_activpal_METs_30s.Rds")
rf_activpal_thigh_model<-readRDS("rf_activpal_METs_30s.Rds")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in dataset
data <- read.csv("sampledata.csv") # Output of example_convert_data.R
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#predict EE
pred <- as.data.frame(predict(lm_actigraph_left_model, newdata = data)$data$response)
pred <- as.data.frame(predict(mlm_actigraph_left_model, newdata = data))
pred <- as.data.frame(predict(nn_actigraph_left_model, newdata = data)$data$response)
pred <- as.data.frame(predict(rf_actigraph_left_model, newdata = data))

pred <- as.data.frame(predict(lm_actigraph_right_model, newdata = data)$data$response)
pred <- as.data.frame(predict(mlm_actigraph_right_model, newdata = data))
pred <- as.data.frame(predict(nn_actigraph_right_model, newdata = data)$data$response)
pred <- as.data.frame(predict(rf_actigraph_right_model, newdata = data))

pred <- as.data.frame(predict(lm_geneactiv_hip_model, newdata = data)$data$response)
pred <- as.data.frame(predict(mlm_geneactiv_hip_model, newdata = data))
pred <- as.data.frame(predict(nn_geneactiv_hip_model, newdata = data)$data$response)
pred <- as.data.frame(predict(rf_geneactiv_hip_model, newdata = data))

pred <- as.data.frame(predict(lm_geneactiv_left_model, newdata = data)$data$response)
pred <- as.data.frame(predict(mlm_geneactiv_left_model, newdata = data))
pred <- as.data.frame(predict(nn_geneactiv_left_model, newdata = data)$data$response)
pred <- as.data.frame(predict(rf_geneactiv_left_model, newdata = data))

pred <- as.data.frame(predict(lm_geneactiv_right_model, newdata = data)$data$response)
pred <- as.data.frame(predict(mlm_geneactiv_right_model, newdata = data))
pred <- as.data.frame(predict(nn_geneactiv_right_model, newdata = data)$data$response)
pred <- as.data.frame(predict(rf_geneactiv_right_model, newdata = data))

pred <- as.data.frame(predict(lm_activpal_thigh_model, newdata = data)$data$response)
pred <- as.data.frame(predict(mlm_activpal_thigh_model, newdata = data))
pred <- as.data.frame(predict(nn_activpal_thigh_model, newdata = data)$data$response)
pred <- as.data.frame(predict(rf_activpal_thigh_model, newdata = data))
#-------------------------------------------------------------------------#
