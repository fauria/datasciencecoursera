# COURSERA - GETTING AND CLEANING DATA
# Course Project

# Download raw data, unzip it and get inside its directory.
dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url=dataset_url, method="curl", destfile="dataset.zip")
unzip("dataset.zip")
setwd("./UCI HAR Dataset")

# Read both ID and name for activities and features.
activity_labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE, col.names=c("activity_id", "activity_name"))
features <- read.table("features.txt", stringsAsFactors=FALSE, col.names=c("feature_id", "feature_name"))

# Read test data
subject_test <- read.table("test/subject_test.txt", col.names=c("subject_id"))
X_test <- read.table("test/X_test.txt", col.names=features[,"feature_name"])
y_test <- read.table("test/y_test.txt", col.names=c("activity_id"))

# Bind "mean" and "std" columns with subject and test ID's.
binded_test <- cbind(subject_test, X_test[,grep("mean|std", colnames(X_train))], y_test)

# Read train data
subject_train <- read.table("test/subject_test.txt", col.names=c("subject_id"))
X_train <- read.table("test/X_test.txt", col.names=features[,"feature_name"])
y_train <- read.table("test/y_test.txt", col.names=c("activity_id"))

# Bind "mean" and "std" columns with subject and test ID's.
binded_train <- cbind(subject_train, X_train[,grep("mean|std", colnames(X_train))], y_train)

# Append test and train data, and add an "activity_name" column.
tidy_dataset <- merge(rbind(binded_test, binded_train), activity_labels, by=c("activity_id"))

# Save the tidy dataset.
write.table(tidy_dataset, row.name=FALSE, file="tidy_dataset.txt")

