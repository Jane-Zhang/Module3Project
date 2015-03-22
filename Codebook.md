##Code book for Module 3 Course Project
###Date Dictionary for data file name : M3Prjdata.txt

1. subject
  * data type : Integer
  * subject identifier
      1..30  unique identifier of the subject (volunteer within an age bracket of 19-48 years) who carried out the experiment. Total 30 fo them.

2. activity_name
  * data type : Factor
  * activity name
      LAYING
      SITTING
      STANDING
      WALKING
      WALKING_DOWNSTAIRS
      WALKING_UPSTAIRS

Note : 
- 3rd column to 68th column are all of type Numeric.
- Each is a mean or standard deviation measurement of the feature vector with time and frequency domain variables captured for each subject/activity group.
- For more details on the experiment and all raw measurements captured, please refer to the [link] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) :

3. tBodyAcc-mean()-X
4. tBodyAcc-mean()-Y
5. tBodyAcc-mean()-Z
6. tBodyAcc-std()-X
7. tBodyAcc-std()-Y
8. tBodyAcc-std()-Z
9. tGravityAcc-mean()-X
10.tGravityAcc-mean()-Y
11.tGravityAcc-mean()-Z
12.tGravityAcc-std()-X
13.tGravityAcc-std()-Y
14.tGravityAcc-std()-Z
15.tBodyAccJerk-mean()-X
16.tBodyAccJerk-mean()-Y
17.tBodyAccJerk-mean()-Z
18.tBodyAccJerk-std()-X
19.tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y			Number
* tBodyGyro-mean()-Z			Number
* tBodyGyro-std()-X			Number
* tBodyGyro-std()-Y			Number
* tBodyGyro-std()-Z			Number
* tBodyGyroJerk-mean()-X		Number
* tBodyGyroJerk-mean()-Y		Number
* tBodyGyroJerk-mean()-Z		Number
* tBodyGyroJerk-std()-X		Number
* tBodyGyroJerk-std()-Y		Number
* tBodyGyroJerk-std()-Z		Number
* tBodyAccMag-mean()			Number
* tBodyAccMag-std()			Number
* tGravityAccMag-mean()		Number
* tGravityAccMag-std()			Number
* tBodyAccJerkMag-mean()		Number
* tBodyAccJerkMag-std()		Number
* tBodyGyroMag-mean()		Number
* tBodyGyroMag-std()			Number
* tBodyGyroJerkMag-mean()		Number
* tBodyGyroJerkMag-std()		Number
* fBodyAcc-mean()-X			Number
* fBodyAcc-mean()-Y			Number
* fBodyAcc-mean()-Z			Number
* fBodyAcc-std()-X			Number
* fBodyAcc-std()-Y			Number
* fBodyAcc-std()-Z			Number
* fBodyAccJerk-mean()-X		Number
* fBodyAccJerk-mean()-Y		Number
* fBodyAccJerk-mean()-Z		Number
* fBodyAccJerk-std()-X			Number
* fBodyAccJerk-std()-Y			Number
* fBodyAccJerk-std()-Z			Number
* fBodyGyro-mean()-X			Number
* fBodyGyro-mean()-Y			Number
* fBodyGyro-mean()-Z			Number
* fBodyGyro-std()-X			Number
* fBodyGyro-std()-Y			Number
* fBodyGyro-std()-Z			Number
* fBodyAccMag-mean()		Number
* fBodyAccMag-std()			Number
* fBodyBodyAccJerkMag-mean()	Number
* fBodyBodyAccJerkMag-std()		Number
* fBodyBodyGyroMag-mean()		Number
* fBodyBodyGyroMag-std()		Number
* fBodyBodyGyroJerkMag-mean()	Number
* fBodyBodyGyroJerkMag-std()	Number
