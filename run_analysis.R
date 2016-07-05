################################################################################
# Course Assignment: Getting and Cleaning Data
# tidy = the tidy data set
# tidy.means = tidy data set with the average of each variable for each 
# activity and each subject
################################################################################

#Download data, unzip, navigate to working directory
library(dplyr)
# if(!dir.exists("Assignment"))dir.create("Assignment")
# setwd("Assignment")
# 
# url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# download.file(url, destfile="data.zip", method="curl")
# unzip("data.zip")
# setwd("UCI HAR Dataset")

# Load data
features <- read.table("features.txt")
X1 <- read.table("train/X_train.txt")
Y1 <- read.table("train/Y_train.txt")
X2 <- read.table("test/X_test.txt")
Y2 <- read.table("test/Y_test.txt")
s1 <- read.table("train/subject_train.txt")
s2 <- read.table("test/subject_test.txt")

#X: training/test set. A 561-feature vector with time and frequency domain variables. 
f <- as.character(features$V2)
cf <- grepl("(mean[(][)]|std[(][)])", f)
X1 <- X1[,cf]
colnames(X1) <- f[cf]
X2 <- X2[,cf]
colnames(X2) <- f[cf]

#Y: the activities by row 
colnames(Y1) <- colnames(Y2) <- "activity"
labels <- c("Walking", "Walking_upstairs", "Walking_downstairs",
      "Sitting", "Standing", "Laying")
Y1$activity <- factor(Y1$activity, labels=labels)
Y2$activity <- factor(Y2$activity, labels=labels)

#Subject
colnames(s1) <- colnames(s2) <- "subject"

#Merging
train <- cbind(s1,Y1,X1)
test <- cbind(s2,Y2,X2)
tidy <- rbind(train, test)
tidy <- arrange(tidy, subject, activity)

#Creating the data.frame that contains the mean of each variable by 
#subject and activity
tidy.means <- group_by(tidy, subject, activity)
tidy.means <- summarize_each(tidy.means, funs(mean))
tidy.means <- as.data.frame(tidy.means)

#Writing the tidy and tidy.means data to csv files
write.csv(tidy, file="tidy.txt", row.names=FALSE)
write.csv(tidy.means, file="tidymeans.txt", row.names=FALSE)
