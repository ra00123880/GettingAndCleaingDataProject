##Getting and Cleaing Data Week 4 assignment
　
#Merges training and test 
```R 
#get test data
dataFile = paste(dataDir,'test/X_test.txt',sep = "")
testData <- read.csv(dataFile, sep = "", header = FALSE)
　
#get train data
dataFile = paste(dataDir,'train/X_train.txt',sep = "")
trainData <- read.csv(dataFile, sep = "", header = FALSE)
　
# merge test and train data
mergedData <- rbind(testData, trainData)
```
#Label the data set with descriptive variable names
```R
dataFile = paste(dataDir,'features.txt',sep = "")
featureData <- read.csv(dataFile, sep = "", header = FALSE)
　
#get V2 column
measureNames <- featureData %>% select(V2)
　
names(mergedData) <- measureNames[,1]
　
## The merged data has now descriptive lables
```
　
#Extract std and mean  measurements columns
```R
#select the columns containing std or mean
stdMeanCols = grepl("std|mean", names(mergedData), ignore.case = TRUE)
　
#slice the data to only std or meancolums
mergedDataFiltered <- mergedData[stdMeanCols]
```
　
#Combine test and train activity IDs
```R
#Get train and test activity IDs corresponds to measure values
　
dataFile = paste(dataDir,'test/y_test.txt',sep = "")
testActivityIds <- read.csv(dataFile, sep = "", header = FALSE)
　
dataFile = paste(dataDir,'train/y_train.txt',sep = "")
trainActivityIds <- read.csv(dataFile, sep = "", header = FALSE)
　
#combine together
combinedActivityIds = rbind(testActivityIds, trainActivityIds)
```
#Get Activity names
```R
dataFile = paste(dataDir,'activity_labels.txt',sep = "")
activityNames <- read.csv(dataFile, sep = "", header = FALSE)
```

#Map activity ids to activity name
```R
idWithNames <- merge(combinedActivityIds, activityNames, by.x = "V1", by.y = "V1")
idMappedNames <- idWithNames %>% select(V2)
　
#Combine IDs of person from test and train activities
dataFile = paste(dataDir,'test/subject_test.txt',sep = "")
testPid <- read.csv(dataFile, sep = "", header = FALSE)
　
dataFile = paste(dataDir,'train/subject_train.txt',sep = "")
trainpid <- read.csv(dataFile, sep = "", header = FALSE)
combinedPid<- rbind(testPid, trainpid)
```

#Create final tidy set
```R
dataWithActivityPerson <- cbind( combinedPid, idMappedNames, mergedDataFiltered)

#Add column names to newly added columns

names(dataWithActivityPerson)[1:2] <- c("PersonId", "ActivityMode")
　
groupedData <-group_by(dataWithActivityPerson, PersonId, ActivityMode)
summerizedData <-summarise_each(y,funs(mean)
```
