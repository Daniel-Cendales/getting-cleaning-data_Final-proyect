*Getting and Cleaning Data - Final Project*

# The data

The data was obtained by an experiment carried out by the company Galaxy.
There was 30 participants doing different activities and they had a phone in their waist
that recollect some information (recorded in the tables x_test, x_train)

## Modifications

* Merge the training and the test sets to create one data set.
* Extract measurements on the mean and standard deviation for each measurement.
* Give appropieate names to the three tables merged (the columns that we choose in the previous step) 
* Create a second a data set with the average of each variable for each activity and each subject.


# Descriptions

* Subject: the ID of the Subject (there were 30 participants)
* Activity: the Name of the Activity performed by the subject (sitting, walking, etc.)

These are the resulting columns (79 columns). They are the means are standar deviation of initials measures in the study:

| "tBodyAcc-mean-X"               | "tBodyAcc-mean-Y"              |
| "tBodyAcc-mean-Z"               | "tBodyAcc-std-X"               |
| "tBodyAcc-std-Y"                | "tBodyAcc-std-Z"               |
| "tGravityAcc-mean-X"            | "tGravityAcc-mean-Y"           |
| "tGravityAcc-mean-Z"            | "tGravityAcc-std-X"            |
| "tGravityAcc-std-Y"             | "tGravityAcc-std-Z"            |
| "tBodyAccJerk-mean-X"           | "tBodyAccJerk-mean-Y"          |
| "tBodyAccJerk-mean-Z"           | "tBodyAccJerk-std-X"           |
| "tBodyAccJerk-std-Y"            | "tBodyAccJerk-std-Z"           |
| "tBodyGyro-mean-X"              | "tBodyGyro-mean-Y"             |
| "tBodyGyro-mean-Z"              | "tBodyGyro-std-X"              |
| "tBodyGyro-std-Y"               | "tBodyGyro-std-Z"              |
| "tBodyGyroJerk-mean-X"          | "tBodyGyroJerk-mean-Y"         |
| "tBodyGyroJerk-mean-Z"          | "tBodyGyroJerk-std-X"          |
| "tBodyGyroJerk-std-Y"           | "tBodyGyroJerk-std-Z"          |
| "tBodyAccMag-mean"              | "tBodyAccMag-std"              |
| "tGravityAccMag-mean"           | "tGravityAccMag-std"           |
| "tBodyAccJerkMag-mean"          | "tBodyAccJerkMag-std"          |
| "tBodyGyroMag-mean"             | "tBodyGyroMag-std"             |
| "tBodyGyroJerkMag-mean"         | "tBodyGyroJerkMag-std"         |
| "fBodyAcc-mean-X"               | "fBodyAcc-mean-Y"              |
| "fBodyAcc-mean-Z"               | "fBodyAcc-std-X"               |
| "fBodyAcc-std-Y"                | "fBodyAcc-std-Z"               |
| "fBodyAcc-meanFreq-X"           | "fBodyAcc-meanFreq-Y"          |
| "fBodyAcc-meanFreq-Z"           | "fBodyAccJerk-mean-X"          |
| "fBodyAccJerk-mean-Y"           | "fBodyAccJerk-mean-Z"          |
| "fBodyAccJerk-std-X"            | "fBodyAccJerk-std-Y"           |
| "fBodyAccJerk-std-Z"            | "fBodyAccJerk-meanFreq-X"      |
| "fBodyAccJerk-meanFreq-Y"       | "fBodyAccJerk-meanFreq-Z"      |
| "fBodyGyro-mean-X"              | "fBodyGyro-mean-Y"             |
| "fBodyGyro-mean-Z"              | "fBodyGyro-std-X"              |
| "fBodyGyro-std-Y"               | "fBodyGyro-std-Z"              |
| "fBodyGyro-meanFreq-X"          | "fBodyGyro-meanFreq-Y"         |
| "fBodyGyro-meanFreq-Z"          | "fBodyAccMag-mean"             |
| "fBodyAccMag-std"               | "fBodyAccMag-meanFreq"         |
| "fBodyBodyAccJerkMag-mean"      | "fBodyBodyAccJerkMag-std"      |
| "fBodyBodyAccJerkMag-meanFreq"  | "fBodyBodyGyroMag-mean"        |
| "fBodyBodyGyroMag-std"          | "fBodyBodyGyroMag-meanFreq"    |
| "fBodyBodyGyroJerkMag-mean"     | "fBodyBodyGyroJerkMag-std"     |
| "fBodyBodyGyroJerkMag-meanFreq" |
 
