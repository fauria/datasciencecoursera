# Coursera - Getting and Cleaning Data
## Course Project CodeBook
---
### Summary 
This codebook describes the variables, the data, and any transformations performed to clean up the data used in the Course Project of the "Getting and Cleaning Data" MOOC by Coursera / Jonh's Hopkins University.

### Variables
Every variable used in the process of cleaning up the data set is contained in the R programming language source code file "run_analysis.R".

The code reads every necessary file from the "UCI HAR Dataset" directory and stores its content in table format in several variables.

### Data
The raw data used in this project can be downloaded from the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The cleaned data generated is stored in the "tidy_dataset.txt" file.

### Transformations 
The following transformations were performed:
. Read activity labels, and store them using "activity_id" and "activity_name" column names.
. Read features, and store them using "feature_id" and "feature_name" column names.
. For both test and train data, read subject as "subject_id", y_test as "activity_id" and X_test.
. Append "subject_id" and "activity_id" to every column matching "mean" or "std" in X_test, and store it in two variables, each one for test and train data.
. Merge both variables and append the activity name based on the "activity_id" column.
. Save the result to a text file "tidy_dataset.txt".
