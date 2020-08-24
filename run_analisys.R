###################
## Final Proyect ##
###################

library(dplyr)
library(reshape2)

## 1. Create a file to download the data

if(!file.exists("Semana 4/Proyect")){
	dir.create("Semana 4/Proyect")
	fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	download.file(url=fileUrl,destfile="Semana 4/Proyect/data.zip")
	unzip(zipfile="Semana 4/Proyect/data.zip",exdir="Semana 4/Proyect")
}
## 1.1 Change the directory where you save the data

setwd("Semana 4/Proyect")
list.files("UCI HAR Dataset")          # See all the files
list.files("UCI HAR Dataset/test")     # See all the files
list.files("UCI HAR Dataset/train")    # See all the files

## 2. Get the necesary tables to merge them
## Train tables

x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt") 
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt") 

## Test tables

x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt") 
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt") 

## 3. Merge the tables below
x<-rbind(x_train,x_test)
y<-rbind(y_train,y_test)
subject<-rbind(subject_train,subject_test)

## 4. Extracts the require columns
## Find all the columns names that are like 'mean' or 'std'

column_names<-read.table("UCI HAR Dataset/features.txt")                     ## Complete names columns
head(column_names)                                                           ## In the second column are the names        
position_columns<-grep(x=column_names[,2],pattern="mean|std")                ## Positions of the columns that we need
names_position_columns<-grep(x=column_names[,2],pattern="mean|std",value=T)  ## Names of the final columns
names_position_columns<-gsub(pattern="[() *]","",names_position_columns)     ## Remove the "()" an replace them for "

## 4.1 Extract the labels for the "Activity" varieable
label_names<-read.table("UCI HAR Dataset/activity_labels.txt")
y$V1<-as.factor(y$V1)
attributes(y$V1)$levels<-label_names[,2]

## 5. Name the activities in the dataset

x_tidy<-x[,position_columns]               ## Extract the columns from the original columns
colnames(x_tidy)<-names_position_columns   ## Assign the names to the table x_tidy
colnames(y)<-"Activity"                    ## Assign the names to the table "y"
colnames(subject)<-"Subject"               ## Assign the names to the table "subject"


complete_data<-cbind(x_tidy,y,subject)     ## Merge all the tables

## FINAL STEP

new_data<-complete_data %>% melt(id=c("Activity","Subject")) %>%
	    dcast(variable~Subject+Activity,mean)
str(new_data)
write.table(new_data, "tidy_data.txt", row.names = FALSE, quote = T)

