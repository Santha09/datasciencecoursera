#run_analysis script will do the following steps to tidy the data and give the final result based on the requirement

library(data.table)
library(dplyr)
library(plyr)

# set the working directory and download the zipfile as mentioned in the course project 
# https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project
# step 1. check if the folder already exists, if not download the zip file and unzip it
setwd("/Users/GPR/Learning/JohnHopkins - DS/CleaningData/Data")
datafileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# unzipfolder = "./Data/UCIHAR"
if (!file.exists("UCIHAR.zip")){
  download.file(datafileurl,"UCIHAR.zip",method="curl")
  unzip("UCIHAR.zip")
}

# set the working directory to the unzipped dataset folder
setwd("/Users/GPR/Learning/JohnHopkins - DS/CleaningData/Data/UCI HAR Dataset")
# download the activity labels txt
activitylabels <- fread("activity_labels.txt",col.names=c("activityid","activityname"))
# download the features text that has the variable names
featureslabels <- fread("features.txt",col.names = c("featureid","featurename"))
# get the list of variable names for later filtration based on requirement
x_labels <- featureslabels$featurename

# read the test data for the sujects, activityid's and kpi data from the moments tracking used in this a/b testing
## add the activity name as a processes of tidying the data for easy readability
### make sure the data is differentiated from test and train
subject_test <- fread("./test/subject_test.txt",col.names=c("subjectid"))
activityid_test <- fread("./test/y_test.txt",col.names=("activityid"))
data_test <- fread("./test/X_test.txt",col.names=x_labels)
testcombdata <- cbind(subject_test,activityid_test,data_test)
testcombdata$activityname <- factor(testcombdata$activityid,level=activitylabels$activityid,labels=activitylabels$activityname)
testcombdata$ftrain_test <- "test"

# repeat the same process for train data by
# reading the train data for the sujects, activityid's and kpi data from the moments tracking used in this a/b testing
## add the activity name as a processes of tidying the data for easy readability
### make sure the data is differentiated from test and train
subject_train <- fread("./train/subject_train.txt",col.names=c("subjectid"))
activityid_train <- fread("./train/y_train.txt",col.names=("activityid"))
data_train <- fread("./train/X_train.txt",col.names=x_labels)
traincombdata <- cbind(subject_train,activityid_train,data_train)
traincombdata$activityname <- factor(traincombdata$activityid,level=activitylabels$activityid,labels=activitylabels$activityname)
traincombdata$ftrain_test <- "train"

# now combine the train and test data together for processing
## extract the column variable names
### filter the required columns from the complete set for easy manipulation
complete_set <- rbind(testcombdata,traincombdata)
names_labels <- names(complete_set)
required_columns <- grep("mean|std",names_labels,value=TRUE)
tidydata_subset <- subset(complete_set,select = c("subjectid","activityname",required_columns))

# naming the variables in more readable form
## removing the special characters so further data massaging doesn't causes error
### update the column names with tidy names
tidy_variablenames <- gsub("mean","Mean",names(tidydata_subset))
tidy_variablenames <- gsub("std","Std",tidy_variablenames)
tidy_variablenames <- gsub("[()]|[-]","",tidy_variablenames)
colnames(tidydata_subset) <- tidy_variablenames

# group by subject id and activity name as per business requirement
## take the average of all mean and sd columns
### change the names of the columns to average columns so people don't confused between measured data or summarized data
group_tidydata_set <- tidydata_subset %>% group_by(subjectid,activityname)
average_columns <-grep("Mean|Std",names(tidydata_subset),value=TRUE)
finalresult_set<- ddply(tidydata_subset, .(subjectid,activityname), colwise(mean, average_columns))

finalresult_set_names <- c("subjectid","activityname",
                           paste("Avg_",grep("Mean|Std",names(finalresult_set),value=TRUE),sep=""))

colnames(finalresult_set) <- finalresult_set_names

# write the final result into a csv file
if (!file.exists("./UCIHAR_AverageMeanStd_Resultset.txt")) {
  write.csv(finalresult_set,"./UCIHAR_AverageMeanStd_Resultset.txt",row.names=FALSE)
}


