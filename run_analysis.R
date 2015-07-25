
## Create data folder if it doesn't exist
if(!file.exists("./data")){dir.create("./data")}

## Download the zip file into the data folder
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

## Unzip the file
unzip(zipfile="./data/Dataset.zip",exdir="./data")

## Unzipped files are in the folder UCI HAR Dataset so we need create file path for later reference 
refPath <- file.path("./data" , "UCI HAR Dataset")


## Read Activity files
activityTestData  <- read.table(file.path(refPath, "test" , "Y_test.txt" ),header = FALSE)
activityTrainData <- read.table(file.path(refPath, "train", "Y_train.txt"),header = FALSE)

## Read Subject files
subjectTestData  <- read.table(file.path(refPath, "test" , "subject_test.txt"),header = FALSE)
subjectTrainData <- read.table(file.path(refPath, "train", "subject_train.txt"),header = FALSE)

## Read Features files
featuresTestData  <- read.table(file.path(refPath, "test" , "X_test.txt" ),header = FALSE)
featuresTrainData <- read.table(file.path(refPath, "train", "X_train.txt"),header = FALSE)


## Merges the training and the test data sets to create one data set
activityData <- rbind(activityTrainData, activityTestData)
subjectData <- rbind(subjectTrainData, subjectTestData)
featuresData <- rbind(featuresTrainData, featuresTestData)

## set names to variables
names(subjectData) <- c("subject")
names(activityData) <- c("activity")
featuresNamesData <- read.table(file.path(refPath, "features.txt"), head = FALSE)
names(featuresData) <- featuresNamesData$V2

## Merge columns to get the data frame Data for all data
combinedData1 <- cbind(subjectData, activityData)
combinedData2 <- cbind(combinedData1, featuresData)
head(combinedData2)

## Extracts only the measurements on the mean and standard deviation for each measurement
## Subset Name of Features by measurements on the mean and standard deviation
## i.e taken Names of Features with "mean()" or "std()"

subFeaturesNamesData <- featuresNamesData$V2[grep("mean\\(\\)|std\\(\\)", featuresNamesData$V2)]

## Subset the data frame by seleted names of Features
selectedNames <- c(as.character(subFeaturesNamesData), "subject", "activity" )
combinedData2 <- subset(combinedData2, select = selectedNames)
head(combinedData2)


## Uses descriptive activity names to name the activities in the data set
## Read descriptive activity names from "activity_labels.txt"

activityLabels <- read.table(file.path(refPath, "activity_labels.txt"),header = FALSE)


## Appropriately labels the data set with descriptive variable names
## In the former part, variables activity and subject and names of the activities have been labelled using 
## descriptive names.In this part, Names of Features will be labelled using descriptive variable names.

## prefix t is replaced by time
## Acc is replaced by Accelerometer
## Gyro is replaced by Gyroscope
## prefix f is replaced by frequency
## Mag is replaced by Magnitude
## BodyBody is replaced by Body

names(combinedData2)<-gsub("^t", "time", names(combinedData2))
names(combinedData2)<-gsub("^f", "frequency", names(combinedData2))
names(combinedData2)<-gsub("Acc", "Accelerometer", names(combinedData2))
names(combinedData2)<-gsub("Gyro", "Gyroscope", names(combinedData2))
names(combinedData2)<-gsub("Mag", "Magnitude", names(combinedData2))
names(combinedData2)<-gsub("BodyBody", "Body", names(combinedData2))


## Creates a second,independent tidy data set and ouput it
## In this part,a second, independent tidy data set will be created with the average of each variable 
## for each activity and each subject based on the data set in step 4.

library(plyr)
Data <- aggregate(. ~subject + activity, combinedData2, mean)
Data <- Data[order(Data$subject,Data$activity),]
write.table(Data, file = "./data/tidydata.txt",row.name = FALSE)


## Produce Codebook
library(knitr)
knit2html("codebook.md")






