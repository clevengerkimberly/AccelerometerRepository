#This code was modified from the code provided in the article by Ahmadi et al. (https://doi.org/10.1371/journal.pone.0233229)
#Accessed February 2021 at https://github.com/MA-QUT/Preschool_EE_Models_PLOS_One


#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(nnet),error=function(e){install.packages("nnet");library(nnet)})
tryCatch(library(randomForest),error=function(e){install.packages("randomForest");library(randomForest)})
tryCatch(library(kernlab),error=function(e){install.packages("kernlab");library(kernlab)})
tryCatch(library(C50),error=function(e){install.packages("C50");library(C50)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets and models are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Montoye2018/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in models
load("bsu_random_forest.RData")
load("bsu_support_vector_machine.RData")
load("bsu_neural_network.RData")
load("bsu_decision_tree.RData")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in dataset
test_data<-read.csv('sample_data.csv',header=TRUE)
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#Make activity intensity predictions for each 30 second interval
#random forest model
pred_rf = predict(bsu_random_forest, newdata=test_data)
#neural network
pred_nn = as.factor(predict(bsu_neural_network, test_data, type="class"))
#decision tree
pred_dt = predict(bsu_decision_tree, newdata=test_data)
#SVM
pred_svm = predict(bsu_support_vector_machine, test_data, type="response")
#-------------------------------------------------------------------------#