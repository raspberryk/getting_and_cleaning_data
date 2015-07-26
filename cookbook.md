
Description of data(produced by script run_analysis.R and included in file tidy_data.txt)

The project contains following:
Cookbook- description of variables and methodology
R script- producing final data
Final data
Readme file- information about project

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universitŕ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
INTRODUCTION:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

TECHNICAL INFORMATION:

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 



VARIABLES

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation


Data were then aggregated(mean) on subject-Activity level

Subject: ID of one of 30 volunteers
Activity- Type of activity during which were the measurements performed

All variables included in data frame:

 [1] "subject"                   "activity"                  "tbodyacc_mean_x"          
 [4] "tbodyacc_mean_y"           "tbodyacc_mean_z"           "tbodyacc_std_x"           
 [7] "tbodyacc_std_y"            "tbodyacc_std_z"            "tgravityacc_mean_x"       
[10] "tgravityacc_mean_y"        "tgravityacc_mean_z"        "tgravityacc_std_x"        
[13] "tgravityacc_std_y"         "tgravityacc_std_z"         "tbodyaccjerk_mean_x"      
[16] "tbodyaccjerk_mean_y"       "tbodyaccjerk_mean_z"       "tbodyaccjerk_std_x"       
[19] "tbodyaccjerk_std_y"        "tbodyaccjerk_std_z"        "tbodygyro_mean_x"         
[22] "tbodygyro_mean_y"          "tbodygyro_mean_z"          "tbodygyro_std_x"          
[25] "tbodygyro_std_y"           "tbodygyro_std_z"           "tbodygyrojerk_mean_x"     
[28] "tbodygyrojerk_mean_y"      "tbodygyrojerk_mean_z"      "tbodygyrojerk_std_x"      
[31] "tbodygyrojerk_std_y"       "tbodygyrojerk_std_z"       "tbodyaccmag_mean"         
[34] "tbodyaccmag_std"           "tgravityaccmag_mean"       "tgravityaccmag_std"       
[37] "tbodyaccjerkmag_mean"      "tbodyaccjerkmag_std"       "tbodygyromag_mean"        
[40] "tbodygyromag_std"          "tbodygyrojerkmag_mean"     "tbodygyrojerkmag_std"     
[43] "fbodyacc_mean_x"           "fbodyacc_mean_y"           "fbodyacc_mean_z"          
[46] "fbodyacc_std_x"            "fbodyacc_std_y"            "fbodyacc_std_z"           
[49] "fbodyaccjerk_mean_x"       "fbodyaccjerk_mean_y"       "fbodyaccjerk_mean_z"      
[52] "fbodyaccjerk_std_x"        "fbodyaccjerk_std_y"        "fbodyaccjerk_std_z"       
[55] "fbodygyro_mean_x"          "fbodygyro_mean_y"          "fbodygyro_mean_z"         
[58] "fbodygyro_std_x"           "fbodygyro_std_y"           "fbodygyro_std_z"          
[61] "fbodyaccmag_mean"          "fbodyaccmag_std"           "fbodybodyaccjerkmag_mean" 
[64] "fbodybodyaccjerkmag_std"   "fbodybodygyromag_mean"     "fbodybodygyromag_std"     
[67] "fbodybodygyrojerkmag_mean" "fbodybodygyrojerkmag_std"