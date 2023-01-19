#This code demonstrates example use of the Sojourn package for implementing the Sojourn models provided in Hibbing et al. (2018) (https://doi.org/10.1249/MSS.0000000000001486)
#Accessed October 2021 at https://github.com/paulhibbing/Sojourn

#-------------------------------------------------------------------------#
#install and load the following packages:
tryCatch(library(Sojourn),error=function(e){install.packages("Sojourn");library(Sojourn)})
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#make sure that all data sets are in the same folder
#set working directory (tell R where to look for the files)
setwd("C:/Users/cleve/Dropbox/Repository/Hibbing/")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#read in sample dataset
example_data_counts<-read.csv("example_data_counts.csv")
example_data_raw<-read.csv("example_data_raw.csv")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#use the apply_youth_sojourn function to predict activity intensity
prediction<-apply_youth_sojourn(example_data_counts,vm="Vector.Magnitude",Site="Hip")
prediction<-apply_youth_sojourn(example_data_counts,vm="Vector.Magnitude",Site="Wrist")
prediction<-apply_youth_sojourn(example_data_raw,vm="ENMO",Site="Hip")
prediction<-apply_youth_sojourn(example_data_raw,vm="ENMO",Site="Wrist")
#-------------------------------------------------------------------------#


#-------------------------------------------------------------------------#
#NOTE:
#the apply_youth_sojourn function requires a data.frame with columns of Timestamp, id, Sex, Age, BMI, and either Vector.Magnitude or ENMO. Age and BMI must be numeric.
#the following steps take ActiGraph output (counts/s) and convert it to the format needed for the sojourn function
counts_data<-AGread::read_AG_counts("count_data.csv",skip=11)
counts_data$id<-"1"
counts_data$Age<-as.numeric("10")
counts_data$Sex<-"M"
counts_data$BMI<-as.numeric("20")
counts_data$Vector.Magnitude<-sqrt(counts_data$Axis1^2 + counts_data$Axis2^2 + counts_data$Axis3^2)
prediction<-apply_youth_sojourn(counts_data,vm="Vector.Magnitude",Site="Hip")


#similarly, this takes raw acceleration (as output from ActiLife), calculates ENMO, and adds required variables
raw_data<-AGread::read_AG_raw("raw_data.csv",output_window_secs = 1, calibrate=TRUE, skip=10)
raw_data$id<-"1"
raw_data$Age<-as.numeric("10")
raw_data$Sex<-"M"
raw_data$BMI<-as.numeric("20")
prediction<-apply_youth_sojourn(raw_data,vm="ENMO",Site="Hip")
#-------------------------------------------------------------------------#
