#Codebook for Getting and Cleaning Data Course Project
As part of creating a tidy data set for the course project, this code book is provided. It includes:

- Codebook: A description of each of the variables, including units
- Summary choices: Information about the summary choices
- Study Design: Information about the experimental study design

#Codebook

This dataset includes the mean and standard deviation variables from the HAR study. These were selected by including all variables with "mean" or "std" in their name from the original dataset, and replacing certain characters "(", ")", and "-" with an underscore "_". Of the original 561 variables, the following 86 met the critera for inclusion:

- tBodyAcc_mean_X
- tBodyAcc_mean_Y
- tBodyAcc_mean_Z
- tBodyAcc_std_X
- tBodyAcc_std_Y
- tBodyAcc_std_Z
- tGravityAcc_mean_X
- tGravityAcc_mean_Y
- tGravityAcc_mean_Z
- tGravityAcc_std_X
- tGravityAcc_std_Y
- tGravityAcc_std_Z
- tBodyAccJerk_mean_X
- tBodyAccJerk_mean_Y
- tBodyAccJerk_mean_Z
- tBodyAccJerk_std_X
- tBodyAccJerk_std_Y
- tBodyAccJerk_std_Z
- tBodyGyro_mean_X
- tBodyGyro_mean_Y
- tBodyGyro_mean_Z
- tBodyGyro_std_X
- tBodyGyro_std_Y
- tBodyGyro_std_Z
- tBodyGyroJerk_mean_X
- tBodyGyroJerk_mean_Y
- tBodyGyroJerk_mean_Z
- tBodyGyroJerk_std_X
- tBodyGyroJerk_std_Y
- tBodyGyroJerk_std_Z
- tBodyAccMag_mean_
- tBodyAccMag_std_
- tGravityAccMag_mean_
- tGravityAccMag_std_
- tBodyAccJerkMag_mean_
- tBodyAccJerkMag_std_
- tBodyGyroMag_mean_
tBodyGyroMag_std_
tBodyGyroJerkMag_mean_
tBodyGyroJerkMag_std_
fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
fBodyAcc_std_X
fBodyAcc_std_Y
fBodyAcc_std_Z
fBodyAcc_meanFreq_X
fBodyAcc_meanFreq_Y
fBodyAcc_meanFreq_Z
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
fBodyAccJerk_std_X
fBodyAccJerk_std_Y
fBodyAccJerk_std_Z
fBodyAccJerk_meanFreq_X
fBodyAccJerk_meanFreq_Y
fBodyAccJerk_meanFreq_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyGyro_std_X
fBodyGyro_std_Y
fBodyGyro_std_Z
fBodyGyro_meanFreq_X
fBodyGyro_meanFreq_Y
fBodyGyro_meanFreq_Z
fBodyAccMag_mean_
fBodyAccMag_std_
fBodyAccMag_meanFreq_
fBodyBodyAccJerkMag_mean_
fBodyBodyAccJerkMag_std_
fBodyBodyAccJerkMag_meanFreq_
fBodyBodyGyroMag_mean_
fBodyBodyGyroMag_std_
fBodyBodyGyroMag_meanFreq_
fBodyBodyGyroJerkMag_mean_
fBodyBodyGyroJerkMag_std_
fBodyBodyGyroJerkMag_meanFreq_
angle_tBodyAccMean_gravity_
angle_tBodyAccJerkMean_gravityMean_
angle_tBodyGyroMean_gravityMean_
angle_tBodyGyroJerkMean_gravityMean_
angle_X_gravityMean_
angle_Y_gravityMean_
angle_Z_gravityMean_
This is a selection of variables from the HAR data, which are described in detail in the file features_info.txt in the data set. Quoting from that file:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

mean(): Mean value std(): Standard deviation
In addition, two variables were integrated with the data set. A descriptive factor for the activity observed during each measurement, and the subject participating in that activity.

activity
subject
Summary choices

The summary made in creating this dataset based on the HAR data were dictated primarily by the instructions of the assignment. In particular:

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
So, each of the 86 variables above from the HAR data is averaged (mean) across all overvations for each subject-activity pair, resulting in a total of 180 observations (30 subjects x 6 activities).

Study Design

This dataset merely cleans and aggregates data from the HAR project, and as such has no tudy design of it's own. The study design for that project is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
