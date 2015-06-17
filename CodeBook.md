# Codebook for Summarization of Samsung Activity Dataset

The following table describes the fields found in the file `subject_activity_measurement_means.txt`.
This file may be loaded back into R with the following command:

```R
read.table("subject_activity_measurement_means.txt")
```
Each field is the mean of the measurement across all the observations done for each activity 
by each subject.

Fields that end in `-[XYZ]`, are the measurements captured in each of the 3 dimensions.

## Feature overview

The high level feature overview is from `features_info.txt` which is included in the data download.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw 
signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured
at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass
Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration
signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and 
tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk
signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag,
tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ,
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that averaged from these signals are:

* mean(): Mean value
* std(): Standard deviation

## Field descriptions

| Field Id | Name | Description  |
|-----------|-----|--------------|
| 1 | subject | Identifier of person being observed |
| 2 | activity | Activity being done by subject |
| 3 | tBodyAcc-mean()-X | Mean of body linear acceleration |
| 4 | tBodyAcc-mean()-Y |         |  
| 5 | tBodyAcc-mean()-Z | |
| 6 | tBodyAcc-std()-X | Standard deviation of body linear acceleration  |
| 7 | tBodyAcc-std()-Y | |
| 8 | tBodyAcc-std()-Z | |
| 9 | tGravityAcc-mean()-X | Mean of gravity linear acceleration  |
| 10 | tGravityAcc-mean()-Y |  |
| 11 | tGravityAcc-mean()-Z | |
| 12 | tGravityAcc-std()-X | Standard deviation of gravity linear aceleration |
| 13 | tGravityAcc-std()-Y  | |
| 14 | tGravityAcc-std()-Z | |
| 15 | tBodyAccJerk-mean()-X | Mean of jerk signal of body linear acceleration |
| 16 | tBodyAccJerk-mean()-Y | |
| 17 | tBodyAccJerk-mean()-Z | |
| 18 | tBodyAccJerk-std()-X | Standard deviation of jerk signal of body linear acceleration |
| 19 | tBodyAccJerk-std()-Y | |
| 20 | tBodyAccJerk-std()-Z | |
| 21 | tBodyGyro-mean()-X | Mean of body angular velocity |
| 22 | tBodyGyro-mean()-Y | | 
| 23 | tBodyGyro-mean()-Z | |
| 24 | tBodyGyro-std()-X | Standard deviation of body angular velocity |
| 25 | tBodyGyro-std()-Y | |
| 26 | tBodyGyro-std()-Z | |
| 27 | tBodyGyroJerk-mean()-X | Mean of jerk signal of body angular velocity |
| 28 | tBodyGyroJerk-mean()-Y | |
| 29 | tBodyGyroJerk-mean()-Z | |
| 30 | tBodyGyroJerk-std()-X | Standard deviation of jerk signal of body angular velocity |
| 31 | tBodyGyroJerk-std()-Y | |
| 32 | tBodyGyroJerk-std()-Z | |
| 33 | tBodyAccMag-mean() | Mean of the magnitude of body linear acceleration |
| 34 | tBodyAccMag-std() | Standard deviation of the magnitude of body linear acceleration |
| 35 | tGravityAccMag-mean() | Mean of the magnitude of gravity linear acceleration |
| 36 | tGravityAccMag-std() | Standard deviation of the magnitude of gravity linear acceleration |
| 37 | tBodyAccJerkMag-mean() | Mean of the magnitude of jerk signal of body linear acceleration |
| 38 | tBodyAccJerkMag-std() | Standard deviation of the magnitude of jerk signal of body linear acceleration |
| 39 | tBodyGyroMag-mean() | Mean of the magnitude of body angular velocity |
| 40 | tBodyGyroMag-std() | Standard deviation of the magnitude of body angular velocity |
| 41 | tBodyGyroJerkMag-mean() | Mean of the magnitude of jerk signal of body angular velocity |
| 42 | tBodyGyroJerkMag-std() | Standard deviation of the magnitude of jerk signal of body angular velocity |
| 43 | fBodyAcc-mean()-X | Mean of the frequency of body linear acceleration |
| 44 | fBodyAcc-mean()-Y | |
| 45 | fBodyAcc-mean()-Z | |
| 46 | fBodyAcc-std()-X | Standard deviation of the frequency of body linear acceleration |
| 47 | fBodyAcc-std()-Y | |
| 48 | fBodyAcc-std()-Z | |
| 49 | fBodyAccJerk-mean()-X | Mean of the jerk signal of the frequency of body linear acceleration |
| 50 | fBodyAccJerk-mean()-Y | |
| 51 | fBodyAccJerk-mean()-Z | |
| 52 | fBodyAccJerk-std()-X | Standard deviation of the jerk signal of the frequency of body linear acceleration |
| 53 | fBodyAccJerk-std()-Y | |
| 54 | fBodyAccJerk-std()-Z | |
| 55 | fBodyGyro-mean()-X | Mean of the frequency of body angular velocity |
| 56 | fBodyGyro-mean()-Y | |
| 57 | fBodyGyro-mean()-Z | |
| 58 | fBodyGyro-std()-X | Standard deviation of the frequency of body angular velocity |
| 59 | fBodyGyro-std()-Y | |
| 60 | fBodyGyro-std()-Z | |
| 61 | fBodyAccMag-mean() | Mean of the magnitude of the frequency of body angular velocity |
| 62 | fBodyAccMag-std() | Standard deviation of the magnitude of the frequency of body angular velocity |
| 63 | fBodyBodyAccJerkMag-mean() | Mean of the magnitude of the jerk signal of frequency of body angular velocity |
| 64 | fBodyBodyAccJerkMag-std() | Standard deviation of the magnitude of the jerk signal of frequency of body angular velocity |
| 65 | fBodyBodyGyroMag-mean() | Mean of the magnitude of the jerk signal of frequency |
| 66 | fBodyBodyGyroMag-std() | | 
| 67 | fBodyBodyGyroJerkMag-mean() | |
| 68 | fBodyBodyGyroJerkMag-std() | |
