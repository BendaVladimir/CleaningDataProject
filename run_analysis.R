#################################################################################
## Importing libraries
#################################################################################
library(readr)
library(dplyr)


#################################################################################
## Importing Training data: X variables, Y variable, subject
## Change your directory for ~ sign
#################################################################################
setwd("~")
TrainDataX <- read_delim("X_train.txt", delim=" ", col_names = FALSE, col_types = paste0(rep('n',561), collapse = ''))
TrainDataY <- read_delim("y_train.txt", delim=" ", col_names = FALSE)
TrainSubject <- read_delim("subject_train.txt", delim=" ", col_names = FALSE)


#################################################################################
## Importing Testing data: X variables, Y variable, subject
## Change your directory for ~ sign
#################################################################################
setwd("~")
TestDataX <- read_delim("X_test.txt", delim=" ", col_names = FALSE, col_types = paste0(rep('n',561), collapse = ''))
TestDataY <- read_delim("y_test.txt", delim=" ", col_names = FALSE)
TestSubject <- read_delim("subject_test.txt", delim=" ", col_names = FALSE)


#################################################################################
## Importing feature names
## Change your directory for ~ sign
#################################################################################
setwd("~")
FeatureNames <- read_delim("features.txt", delim=" ", col_names = FALSE)


#################################################################################
## Renaming feature names in X, y and subject datasets
#################################################################################
names(TrainDataX) <- FeatureNames$X2
names(TestDataX) <- FeatureNames$X2
names(TrainDataY) <- "y"
names(TestDataY) <- "y"
names(TrainSubject) <- "Subject"
names(TestSubject) <- "Subject"


#################################################################################
## Binding training and testing datasets with bind_cols. 
#################################################################################
TrainData <- bind_cols(TrainSubject, TrainDataY, TrainDataX)
TestData <- bind_cols(TestSubject, TestDataY, TestDataX)


#################################################################################
##  Creating full dataset from training and testing data with bind_rows.
#################################################################################
Data <- bind_rows(TrainData, TestData)


#################################################################################
##  Filtering full dataset for mean and std variables.
#################################################################################
OutputData <- Data %>%
  select(contains("-mean()") | contains("-std()"))


#################################################################################
##  Using substitution for creating new variable names.
##  Vector of variable names was created, and multiple substitutions were
##  used in order to normalize new names.
#################################################################################
FeatureNames <- names(OutputData)
FeatureNames <- sub("^t","Time", FeatureNames)
FeatureNames <- sub("^f","Fuerier", FeatureNames)
FeatureNames <- sub("Acc","Acceleration", FeatureNames)
FeatureNames <- sub("-mean","Mean", FeatureNames)
FeatureNames <- sub("-std","StandardDeviation", FeatureNames)
FeatureNames <- gsub("\\(|)","", FeatureNames)
FeatureNames <- sub("-","_", FeatureNames)


#################################################################################
##  Assigning new names to complete dataset.
#################################################################################
names(OutputData) <- FeatureNames


#################################################################################
##  Creating new dataframe with only mean variables.
#################################################################################
OutputDataMean <- Data %>%
  select(contains("Mean"))

