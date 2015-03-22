##Code book for Module 3 Course Project
###Date Dictionary for data file name : M3Prjdata.txt

Column 1. subject
* data type : Integer
* subject identifier. This is the unique identifier of the subject (volunteer within an age bracket of 19-48 years) who carried out the experiment. Total 30 subjects.
  * 1..30  

Column 2. activity_name
* data type : Factor
* activity name. Total 6 activities.
  * LAYING
  * SITTING
  * STANDING
  * WALKING
  * WALKING_DOWNSTAIRS
  * WALKING_UPSTAIRS

Note (A) : 3rd column to 68th column are all of data type Numeric. Each is a mean or standard deviation measurement of the feature vector with time (column names that start with 't') and frequency (column names that start with 'f') domain variables captured for each subject/activity group.

Column 3. tBodyAcc-mean()-X

Column 4. tBodyAcc-mean()-Y

Column 5. tBodyAcc-mean()-Z

Column 6. tBodyAcc-std()-X

Column 7. tBodyAcc-std()-Y

Column 8. tBodyAcc-std()-Z

Column 9. tGravityAcc-mean()-X

Column 10. tGravityAcc-mean()-Y

Column 11. tGravityAcc-mean()-Z

Column 12. tGravityAcc-std()-X

Column 13. tGravityAcc-std()-Y

Column 14. tGravityAcc-std()-Z

Column 15. tBodyAccJerk-mean()-X

Column 16. tBodyAccJerk-mean()-Y

Column 17. tBodyAccJerk-mean()-Z

Column 18. tBodyAccJerk-std()-X

Column 19. tBodyAccJerk-std()-Y

Column 20. tBodyAccJerk-std()-Z

Column 21. tBodyGyro-mean()-X

Column 22. tBodyGyro-mean()-Y

Column 23. tBodyGyro-mean()-Z

Column 24. tBodyGyro-std()-X

Column 25. tBodyGyro-std()-Y

Column 26. tBodyGyro-std()-Z

Column 27. tBodyGyroJerk-mean()-X

Column 28. tBodyGyroJerk-mean()-Y

Column 29. tBodyGyroJerk-mean()-Z

Column 30. tBodyGyroJerk-std()-X

Column 31. tBodyGyroJerk-std()-Y

Column 32. tBodyGyroJerk-std()-Z

Column 33. tBodyAccMag-mean()

Column 34. tBodyAccMag-std()

Column 35. tGravityAccMag-mean()

Column 36. tGravityAccMag-std()

Column 37. tBodyAccJerkMag-mean()

Column 38. tBodyAccJerkMag-std()

Column 39. tBodyGyroMag-mean()

Column 40. tBodyGyroMag-std()

Column 41. tBodyGyroJerkMag-mean()

Column 42. tBodyGyroJerkMag-std()

Column 43. fBodyAcc-mean()-X

Column 44. fBodyAcc-mean()-Y

Column 45. fBodyAcc-mean()-Z

Column 46. fBodyAcc-std()-X

Column 47. fBodyAcc-std()-Y

Column 48. fBodyAcc-std()-Z

Column 49. fBodyAccJerk-mean()-X

Column 50. fBodyAccJerk-mean()-Y

Column 51. fBodyAccJerk-mean()-Z

Column 52. fBodyAccJerk-std()-X

Column 53. fBodyAccJerk-std()-Y

Column 54. fBodyAccJerk-std()-Z

Column 55. fBodyGyro-mean()-X

Column 56. fBodyGyro-mean()-Y

Column 57. fBodyGyro-mean()-Z

Column 58. fBodyGyro-std()-X

Column 59. fBodyGyro-std()-Y

Column 60. fBodyGyro-std()-Z

Column 61. fBodyAccMag-mean()

Column 62. fBodyAccMag-std()

Column 63. fBodyBodyAccJerkMag-mean()

Column 64. fBodyBodyAccJerkMag-std()

Column 65. fBodyBodyGyroMag-mean()

Column 66. fBodyBodyGyroMag-std()

Column 67. fBodyBodyGyroJerkMag-mean()

Column 68. fBodyBodyGyroJerkMag-std()


Note (B): For more details on the experiment and all raw measurements captured, please refer to the [link] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) :


###Information on transformation of raw data sets to the above data set :
- Raw files used : 
  - x_test.txt, x_train.txt (561 feature vector readings for test (2947 records) and training (7352 records))
  - y_test.txt, y_train.txt (activity labels performed corresponding to the feature vector readings for test (2947 records) and training (7352 records)) 
  - subject_test.txt, subject_train.txt (subjects performing the corresponding feature vectors for test (2947 records) and training (7352 records))
  - activity_labels.txt (label and name of the 6 activities)
  - features.txt (names of the 561 feature vectors)
- For each set of test(3 files) and training(3 files) data, link up the subject, activity performed and all the feature readings to form one new data set (2947 records/563 variables for test; 7352 records/563 variables for training).
- Merge both the new test and training data sets into one big data set to achieve total 10299 records each with 564 variables. Call this new table ALLDATA.
- Reference to the activity_labels.txt, match the activity name to the activity label of each of the 10299 records in ALLDATA.
- Tidy up the ALLDATA table to remove activity label(not needed since included the activity name) and also to ensure the record order is preserved as per original data ALLDATA set for easy checking. Call this new table ALLDATA3.
- Reference to the features.txt, identify the indices of all the variables that are measurements on mean() and std() related.
- With the identified indices, two steps are done : 
- (1) subset ALLDATA3 so that only those variable columns that are related to mean() and std() remain. Discard the rest. Call this new table ALLDATA4.
- (2) map the corresponding variables names to respective column headers in the remaining columns of ALLDATA4 table.
- From ALLDATA4, summarise the data so that all the 10299 will be grouped by subject/activity and each record will show the average of each variable for each subject/activity group. Call this FINALDATA.
- Check that each variable is in one column; each different observation of that variable is in a different row.
- FINALDATA, which is the clean and tidy set of data, is then output to a text file called M3Prjdata.txt.

