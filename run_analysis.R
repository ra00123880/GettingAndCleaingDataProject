
##Load deployer library
library(dplyr)

dataDir ='UCI HAR Dataset/'

#Merges the training and the test sets to create one data set.
##get test data
dataFile = paste(dataDir,'test/X_test.txt',sep = "")
testData <- read.csv(dataFile, sep = "", header = FALSE)

##get train data
dataFile = paste(dataDir,'train/X_train.txt',sep = "")
trainData <- read.csv(dataFile, sep = "", header = FALSE)

##merge test and train data
mergedData <- rbind(testData, trainData)


#Appropriately labels the data set with descriptive variable names.
dataFile = paste(dataDir,'features.txt',sep = "")
featureData <- read.csv(dataFile, sep = "", header = FALSE)

##get V2 column
measureNames <- featureData %>% select(V2)

#The merged data has now descriptive lables
names(mergedData) <- measureNames[,1]



#Extracts only the measurements on the mean and standard deviation for each measurement.
#select the columns containing std or mean
stdMeanCols = grepl("std|mean", names(mergedData))

#slice the data to only std or mean columns
mergedDataFiltered <- mergedData[stdMeanCols]


#Uses descriptive activity names to name the activities
##Get train and test activity IDs corresponds to measure values

dataFile = paste(dataDir,'test/y_test.txt',sep = "")
testActivityIds <- read.csv(dataFile, sep = "", header = FALSE)

dataFile = paste(dataDir,'train/y_train.txt',sep = "")
trainActivityIds <- read.csv(dataFile, sep = "", header = FALSE)

##combine together
combinedActivityIds = rbind(testActivityIds, trainActivityIds)

##get Activity names
dataFile = paste(dataDir,'activity_labels.txt',sep = "")
activityNames <- read.csv(dataFile, sep = "", header = FALSE)

#Get IDs of person from test and train activities
dataFile = paste(dataDir,'test/subject_test.txt',sep = "")
testPid <- read.csv(dataFile, sep = "", header = FALSE)

dataFile = paste(dataDir,'train/subject_train.txt',sep = "")
trainpid <- read.csv(dataFile, sep = "", header = FALSE)
##combine together
combinedPid<- rbind(testPid, trainpid)

#combine activity ids tomeasurements
dataWithActivityPerson <- cbind( combinedActivityIds, mergedDataFiltered)
names(dataWithActivityPerson)[1] <-  "ActivityMode"

#convert activity ids to activity name
dataWithActivityPerson$ActivityMode = factor(dataWithActivityPerson$ActivityMode, levels = activityNames[,1], labels = as.character(activityNames[,2]))

#combine person ids tomeasurements
dataWithActivityPerson <- cbind( combinedPid, dataWithActivityPerson)
names(dataWithActivityPerson)[1] <-  "PersonId"

# group the data using PersonId and ActivityMode and summerize each column
groupedData <-group_by(dataWithActivityPerson,PersonId, ActivityMode)
summerizedData <-summarise_each(groupedData,funs(mean))

#write data to a file
write.table(summerizedData, "tidydata.txt", row.names = FALSE, quote = FALSE)

