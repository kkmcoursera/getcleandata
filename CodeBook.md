Human Activity Recognition Using Smartphones Dataset
Version 1.0

Note: 
====
A "tidy" dataset, containing only means and standard deviation values, related to specific subjects and activities, as referenced to either testing or training recordings, has been created as part of the Coursera assignment.

In addition, another dataset, created from the above "tidy" dataset, was prepared from a summation of recorded values, which were thereafter averaged for subject-activity pairs.

Authors of and contact information for the original v1.0 study are:
==================================================================

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

Description:
===========

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


Feature Selection (as excerpted from the study document, 'features.txt')
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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

	mean(): Mean value
	std(): Standard deviation

The complete list of variables of each feature vector is shown below.

1	subject
	An integer corresponding to a particular subject involved in the study.

2	source
	Source is either 'TEST' for test data, and 'TRAINING' for training data.

3	activity
	A set of activities that sujects performed, recorded during the study. 
	The set of specific values are shown below:
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

4	tBodyAcc-mean()-X
5	tBodyAcc-mean()-Y
6	tBodyAcc-mean()-Z
7	tBodyAcc-std()-X
8	tBodyAcc-std()-Y
9	tBodyAcc-std()-Z
10	tGravityAcc-mean()-X
11	tGravityAcc-mean()-Y
12	tGravityAcc-mean()-Z
13	tGravityAcc-std()-X
14	tGravityAcc-std()-Y
15	tGravityAcc-std()-Z
16	tBodyAccJerk-mean()-X
17	tBodyAccJerk-mean()-Y
18	tBodyAccJerk-mean()-Z
19	tBodyAccJerk-std()-X
20	tBodyAccJerk-std()-Y
21	tBodyAccJerk-std()-Z
22	tBodyGyro-mean()-X
23	tBodyGyro-mean()-Y
24	tBodyGyro-mean()-Z
25	tBodyGyro-std()-X
26	tBodyGyro-std()-Y
27	tBodyGyro-std()-Z
28	tBodyGyroJerk-mean()-X
29	tBodyGyroJerk-mean()-Y
30	tBodyGyroJerk-mean()-Z
31	tBodyGyroJerk-std()-X
32	tBodyGyroJerk-std()-Y
33	tBodyGyroJerk-std()-Z
34	tBodyAccMag-mean()
35	tBodyAccMag-std()
36	tGravityAccMag-mean()
37	tGravityAccMag-std()
38	tBodyAccJerkMag-mean()
39	tBodyAccJerkMag-std()
40	tBodyGyroMag-mean()
41	tBodyGyroMag-std()
42	tBodyGyroJerkMag-mean()
43	tBodyGyroJerkMag-std()
44	fBodyAcc-mean()-X
45	fBodyAcc-mean()-Y
46	fBodyAcc-mean()-Z
47	fBodyAcc-std()-X
48	fBodyAcc-std()-Y
49	fBodyAcc-std()-Z
50	fBodyAccJerk-mean()-X
51	fBodyAccJerk-mean()-Y
52	fBodyAccJerk-mean()-Z
53	fBodyAccJerk-std()-X
54	fBodyAccJerk-std()-Y
55	fBodyAccJerk-std()-Z
56	fBodyGyro-mean()-X
57	fBodyGyro-mean()-Y
58	fBodyGyro-mean()-Z
59	fBodyGyro-std()-X
60	fBodyGyro-std()-Y
61	fBodyGyro-std()-Z
62	fBodyAccMag-mean()
63	fBodyAccMag-std()
64	fBodyBodyAccJerkMag-mean()
65	fBodyBodyAccJerkMag-std()
66	fBodyBodyGyroMag-mean()
67	fBodyBodyGyroMag-std()
68	fBodyBodyGyroJerkMag-mean()
69	fBodyBodyGyroJerkMag-std()

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
=======
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

