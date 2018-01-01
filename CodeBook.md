Description of the Data
=======================
This codebook provides information on the variables in the run.analysis.R dataset. The dataset used was the tidy dataset.

Data Set Information from the data set creators
===============================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Variables in the tidy dataset
=============================
Subject.id: Subject identification number
Activity.Name: Name of the subject's activity. This includes the following:

1.) WALKING
2.) WALKING UPSTAIRS
3.) WALKING DOWNSTAIRS
4.) SITTING
5.) STANDING
6.) LAYING

An additional 79 variables were chosen from the data set and only the estimated mean and standard deviations were included
The following variables were relabeled for clarity
1.) Acc = Acceleration (g)
2.) BodyBody = Body
3.) ^f = Frequency
4.) Mag = Magnitude
5.) mean = Mean
6.) std = Stdev
7.) ^t = Time (seconds)

The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.

The original list of all other variables are listed in "features.txt" and "features_info.txt"

The "XYZ" notations was used to identify the variable's X, Y, or Z axis:
1.)tBodyAcc-XYZ
2.)tGravityAcc-XYZ
3.)tBodyAccJerk-XYZ
4.)tBodyGyro-XYZ
5.)tBodyGyroJerk-XYZ
6.)tBodyAccMag
7.)tGravityAccMag
8.)tBodyAccJerkMag
9.)tBodyGyroMag
10.)tBodyGyroJerkMag
11.)fBodyAcc-XYZ
12.)fBodyAccJerk-XYZ
13.)fBodyGyro-XYZ
14.)fBodyAccMag
15.)fBodyAccJerkMag
16.)fBodyGyroMag
17.)fBodyGyroJerkMag