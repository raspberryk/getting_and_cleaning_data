#You should create one R script called run_analysis.R that does the following. 
#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#install.packages("dplyr")

library(dplyr)

#Creating temp file, source zipped file will be loaded into this temp file
temp <- tempfile()

# Downloading file so the analysis is reproducable even when the Samsung data are not present
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp)

#Loading data into data frames
data1 <- read.table(unz(temp, "UCI HAR Dataset/test/X_test.txt"))
activity1 <- read.table(unz(temp, "UCI HAR Dataset/test/y_test.txt"))
data2 <- read.table(unz(temp, "UCI HAR Dataset/train/X_train.txt"))
activity2 <- read.table(unz(temp, "UCI HAR Dataset/train/y_train.txt"))
subject1<-read.table(unz(temp, "UCI HAR Dataset/test/subject_test.txt"))
subject2<-read.table(unz(temp, "UCI HAR Dataset/train/subject_train.txt"))
features<-read.table(unz(temp, "UCI HAR Dataset/features.txt"))
activity_labels<-read.table(unz(temp, "UCI HAR Dataset/activity_labels.txt"))

#Joining test and train data frames together
data<-rbind(data1,data2)
subject<-rbind(subject1,subject2)
activity<-rbind(activity1,activity2)

#renaming the columns
names(activity)<-"activity"
names(subject)<-"subject"
names(data)<-features[,2]

#including just values for mean and standard deviation
subset<-data[,grep("mean[(]|std[(]",names(data))]

# Editing column names: lowering all capitals,excluding "(" & ")" and replacing "-" with underscore
names(subset)<-tolower(names(subset))
names(subset)<-gsub("[(]|[)]","",names(subset),)
names(subset)<-gsub("[-]","_",names(subset),)

#Joining data with activity codes and subject ids
temp<-cbind(subject,activity,subset)

#replacing activity codes with activity names
temp$activity<-activity_labels[temp$activity,2]

tidy_data_final<-temp
#Data needed in step 4 are ready and available in data frame: tidy_data_final

#aggregation(mean) of data per subject id and activity
agg<-aggregate(by=list(temp$activity,temp$subject), x = temp, FUN="mean")
agg$activity<-agg$Group.1
agg$subject<-agg$Group.2
agg_final<-select(agg,-(Group.1:Group.2))

#Aggregated data from step 5 are ready and available in data frame: agg_final

#exporting aggregated data in tab delimited txt into working directory
write.table(agg_final,"tidy_data.txt",row.name=FALSE, , sep="\t") 

#deleting temp file
unlink(temp)


