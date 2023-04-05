## Initial cyanotoxin data processing

## load different packages
## Import packages
#install.packages("dplyr", dependencies = T)
lapply(c("plyr","dplyr","ggplot2","cowplot",
         "lubridate","tidyverse", "reshape2"), require, character.only=T)

## Check working directory so that you are in setwd("~/GitHub/CyanoSpatial/code")
getwd()

## Read in data
data <- read.csv("../data/SWAMP_cyanotoxins_water.csv", header=T)

## Become familiar with data set
colnames(data)

sub <- data[,c("StationName","StationCode","SampleDate","CollectionTime",
               "Analyte","Unit","Result","MDL","CollectionMethodName",
               "TargetLatitude","TargetLongitude")]

## Goal: try and summarize results by StationName
# organize by analyte type and station - how many samples do we have for different analytes from different locations
# create a table