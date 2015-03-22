##Codebook for Course Project
============================

run_analysis.R creates one (1) tidy data set with 68 variables (columns) and 180 observations (rows). The data values are the mean readings for each activity performed by each subject. Since there are 30 subjects and 6 activities, and every subject does each activity, this leads to 180 observations. From the set of features provided by the UCI HAR data, there are 66 feature vectors that measure either mean or standard deviation. Combined with the additional two columns for the subject and the activity, this means 68 variables.

=============================

A description of each variable is as follows. The numbering corresponds to the row number on the table:

1. 	Subject

	- This is a factor variable that identifies the subject the data corresponds to. As there are 30 subjects, the levels of 	this variable are [1-30].

2. 	Activity

	- This is a factor variable that identifies which activity corresponds to the data. As there are 6 activities, there are 	six (6) labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

3.	tBodyAcc-mean()-X
4.	tBodyAcc-mean()-Y
5.	tBodyAcc-mean()-Z
6.	tGravityAcc-mean()-X
7.	tGravityAcc-mean()-Y
8.	tGravityAcc-mean()-Z
9.	tBodyAccJerk-mean()-X
10.	tBodyAccJerk-mean()-Y
11.	tBodyAccJerk-mean()-Z
12.	tBodyGyro-mean()-X
13.	tBodyGyro-mean()-Y
14.	tBodyGyro-mean()-Z
15.	tBodyGyroJerk-mean()-X
16.	tBodyGyroJerk-mean()-Y
17.	tBodyGyroJerk-mean()-Z
18.	tBodyAccMag-mean()
19.	tGravityAccMag-mean()
20.	tBodyAccJerkMag-mean()
21.	tBodyGyroMag-mean()
22.	tBodyGyroJerkMag-mean()
23.	fBodyAcc-mean()-X
24.	fBodyAcc-mean()-Y
25.	fBodyAcc-mean()-Z
26.	fBodyAccJerk-mean()-X
27.	fBodyAccJerk-mean()-Y
28.	fBodyAccJerk-mean()-Z
29.	fBodyGyro-mean()-X
30.	fBodyGyro-mean()-Y
31.	fBodyGyro-mean()-Z
32.	fBodyAccMag-mean()
33.	fBodyBodyAccJerkMag-mean()
34.	fBodyBodyGyroMag-mean()
35.	fBodyBodyGyroJerkMag-mean()
36.	tBodyAcc-std()-X
37.	tBodyAcc-std()-Y
38.	tBodyAcc-std()-Z
39.	tGravityAcc-std()-X
40.	tGravityAcc-std()-Y
41.	tGravityAcc-std()-Z
42.	tBodyAccJerk-std()-X
43.	tBodyAccJerk-std()-Y
44.	tBodyAccJerk-std()-Z
45.	tBodyGyro-std()-X
46.	tBodyGyro-std()-Y
47.	tBodyGyro-std()-Z
48.	tBodyGyroJerk-std()-X
49.	tBodyGyroJerk-std()-Y
50.	tBodyGyroJerk-std()-Z
51.	tBodyAccMag-std()
52.	tGravityAccMag-std()
53.	tBodyAccJerkMag-std()
54.	tBodyGyroMag-std()
55.	tBodyGyroJerkMag-std()
56.	fBodyAcc-std()-X
57.	fBodyAcc-std()-Y
58.	fBodyAcc-std()-Z
59.	fBodyAccJerk-std()-X
60.	fBodyAccJerk-std()-Y
61.	fBodyAccJerk-std()-Z
62.	fBodyGyro-std()-X
63.	fBodyGyro-std()-Y
64.	fBodyGyro-std()-Z
65.	fBodyAccMag-std()
66.	fBodyBodyAccJerkMag-std()
67.	fBodyBodyGyroMag-std()
68.	fBodyBodyGyroJerkMag-std()

The above are the rest of the variables included in the table. Each value represents the average reading of that 		variable, which corresponds to one activity undertaken by one subject. The units are unchanged from the original data, 		i.e. the variables prefixed by ’t’ are time domain signals (seconds), while those prefixed by ‘f’ are frequency domain 		signals (Hz). All values are normalized between [-1, 1].
