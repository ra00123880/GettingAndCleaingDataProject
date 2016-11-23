#Load deployer library
library(dplyr)
　
dataDir ='UCI HAR Dataset/'
　
#---Merges the training and the test sets to create one data set.
#get test data
dataFile = paste(dataDir,'test/X_test.txt',sep = "")
testData <- read.csv(dataFile, sep = "", header = FALSE)
　
#get train data
dataFile = paste(dataDir,'train/X_train.txt',sep = "")
trainData <- read.csv(dataFile, sep = "", header = FALSE)
　
# merge test and train data
mergedData <- rbind(testData, trainData)
　
　
#---Appropriately labels the data set with descriptive variable names.
dataFile = paste(dataDir,'features.txt',sep = "")
featureData <- read.csv(dataFile, sep = "", header = FALSE)
　
#get V2 column
measureNames <- featureData %>% select(V2)
　
names(mergedData) <- measureNames[,1]
　
# The merged data has now descriptive lables
　
#---Extracts only the measurements on the mean and standard deviation for each measurement.
#select the columns containing std or mean
stdMeanCols = grepl("std|mean", names(mergedData), ignore.case = TRUE)
　
#slice the data to only std or meancolums
mergedDataFiltered <- mergedData[stdMeanCols]
　
　
#----Uses descriptive activity names to name the activities in the data set
　
#Get train and test activity IDs corresponds to measure values
　
dataFile = paste(dataDir,'test/y_test.txt',sep = "")
testActivityIds <- read.csv(dataFile, sep = "", header = FALSE)
　
dataFile = paste(dataDir,'train/y_train.txt',sep = "")
trainActivityIds <- read.csv(dataFile, sep = "", header = FALSE)
　
#combine together
combinedActivityIds = rbind(testActivityIds, trainActivityIds)
　
#get Activity names
dataFile = paste(dataDir,'activity_labels.txt',sep = "")
activityNames <- read.csv(dataFile, sep = "", header = FALSE)
　
#map activity ids to activity name
　
idWithNames <- merge(combinedActivityIds, activityNames, by.x = "V1", by.y = "V1")
idMappedNames <- idWithNames %>% select(V2)
　
#---- Get IDs of person from test and train activities
dataFile = paste(dataDir,'test/subject_test.txt',sep = "")
testPid <- read.csv(dataFile, sep = "", header = FALSE)
　
dataFile = paste(dataDir,'train/subject_train.txt',sep = "")
trainpid <- read.csv(dataFile, sep = "", header = FALSE)
combinedPid<- rbind(testPid, trainpid)
　
# Add Person ID and Activitynamecolumns to data set
dataWithActivityPerson <- cbind( combinedPid, idMappedNames, mergedDataFiltered)
　
# Add column names to newly added columns
names(dataWithActivityPerson)[1:2] <- c("PersonId", "ActivityMode")
　
# group the data using PersonId and ActivityMode and summerize each column
groupedData <-group_by(dataWithActivityPerson, PersonId, ActivityMode)
summerizedData <-summarise_each(y,funs(mean))
　

