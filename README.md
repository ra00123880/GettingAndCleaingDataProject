
#README

```
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 

The goal is to prepare tidy data that can be used for lateranalysis. You will be graded by your peers 

on a series of yes/no questions related to the project. Youwill be required to submit: 

1) a tidy data set as described below, 

2) a link to a Github repository with your script for
performing the analysis, and

3) a code book that describes the variables, the data, and any transformations or work that 
 
you performed to clean up the data called CodeBook.md. 

You should also include a README.md in the repo with your scripts. This repo explains how all of the 

scripts work and how they are connected.One of the most exciting areas in all of data science right
now is wearable computing - see for example this article .Companies like Fitbit, Nike,
and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data
linked to from the course website representdata collected from the accelerometers from the Samsung
Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one dataset.Extracts only the measurements on the 
mean and standard deviation for each measurement. Uses descriptive activity names to name the activities
in the data setAppropriately labels the data set with descriptive variable names. From the data set in 
step 4, creates a second, independent tidy data set with the average of each variable for each activity 
and each subject.

```

#Merges the train and the test sets 

dataFile = paste(dataDir,'test/X_test.txt',sep ="")

testData <- read.csv(dataFile, sep = "", header= FALSE)

dataFile = paste(dataDir,'train/X_train.txt',sep ="")

trainData <- read.csv(dataFile, sep = "",header = FALSE)

mergedData <- rbind(testData, trainData)



#Appropriately labels the data set with descriptive variable
names

dataFile = paste(dataDir,'features.txt',sep = "")

featureData <- read.csv(dataFile, sep = "",
header = FALSE)

measureNames <- featureData %>% select(V2)

names(mergedData) <- measureNames[,1]

#Extracts only  the
mean and standard deviation columns

stdMeanCols = grepl("std|mean", names(mergedData))

mergedDataFiltered <- mergedData[stdMeanCols]
#Get train and test activity IDs and merge
dataFile = paste(dataDir,'test/y_test.txt',sep ="")

testActivityIds <- read.csv(dataFile, sep = "",header = FALSE)
dataFile = paste(dataDir,'train/y_train.txt',sep ="")

trainActivityIds <- read.csv(dataFile, sep ="", header = FALSE)
combinedActivityIds = rbind(testActivityIds,trainActivityIds)

#get Activity names

dataFile = paste(dataDir,'activity_labels.txt',sep ="")

activityNames <- read.csv(dataFile, sep = "",header = FALSE)

#Get IDs of person from test and train activities and merge

dataFile = paste(dataDir,'test/subject_test.txt',sep ="")

testPid <- read.csv(dataFile, sep = "", header= FALSE)

dataFile = paste(dataDir,'train/subject_train.txt',sep ="")

trainpid <- read.csv(dataFile, sep = "", header= FALSE)

combinedPid<- rbind(testPid, trainpid)

#combine activity ids to measurements
dataWithActivityPerson <- cbind( combinedActivityIds,mergedDataFiltered)
names(dataWithActivityPerson)[1] <-  "ActivityMode"

#convert activity ids to activity name
dataWithActivityPerson$ActivityMode = factor(dataWithActivityPerson$ActivityMode, 
               levels= activityNames[,1], labels = as.character(activityNames[,2]))

#combine person ids tomeasurements
dataWithActivityPerson <- cbind( combinedPid,
dataWithActivityPerson)
names(dataWithActivityPerson)[1] <-  "PersonId"
 

# group the data using PersonId and ActivityMode and
summerize each column
groupedData <-group_by(dataWithActivityPerson,PersonId,
ActivityMode)
summerizedData <-summarise_each(groupedData,funs(mean))

#write data to a file
write.table(summerizedData, "tidydata.txt",
row.names = FALSE, quote = FALSE)
