Description of the Data

This codebook provides information on the variables in the run.analysis.R dataset. The dataset used was the tidy dataset.

Data Set Information from the data set creators:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Variables in the tidy dataset:
Subject.id: Subject identification number
Activity.Name: Name of the subject's activity. This includes the following:

WALKING
WALKING UPSTAIRS
WALKING DOWNSTAIRS
SITTING
STANDING
LAYING

An additional 79 variables were chosen from the data set and only the estimated mean and standard deviations were included
The following variables were relabeled for clarity:
Acc = Acceleration
BodyBody = Body
^f = Frequency
Mag = Magnitude
mean = Mean
std = Stdev
^t = Time

The original list of all other variables are listed in "features.txt" and "features_info.txt"