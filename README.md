# Module3Project
##Module3 Course Project

###The submission for Module 3 Course Project comprises the following :

1. M3Prjdata.txt - Tidy and clean data set. 
2. run_analysis.R - R script that process and transforms the raw data sets found in [link] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to output the text file in point 1.
3. CodeBook.md - Codebook that describes the variables, the data and transformation performed to clean up the raw data sets.
4. README.md - file that describes the submission.

Note : Item 1 is NOT in the Github repository. However, it can be output by running the R script (Item 2) on the raw data sets. Items 2,3 and 4 are in the Github repository.

###How the script works :

1. Download the raw data set from [link] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) into the working directory.
2. Execute the run_analysis.R. Following explains what the script does :

* Read in necessary files
* Merge test and train data sets to create one data set
  * For the test data set of files, form the subject, activity label and all feature readings into one data set called testok
  * For the train data set of files, form the subject, activity label and all feature readings into one data set called trainok
  * Combine testok and trainok to form one big data set called alldata
* Use descriptive activity names to name the activities
  * Assign column headers to activity table
  * To ensure the row order is preserved before and after the merge, create a temp variable which gives the row number of original alldata table. 
  * Merge the data in alldata table and the activity table by key = activity label to form alldata1 table.
  * Reorder rows in alldata1 by the row number (temp_id) to get back the original order.
  * Remove the temp_id and the activity label (not needed now since the activity name has been merged) from alldata1 table.
  * Reorder the columns : subject, activity name, readings to form alldata3 table.
* Extract only measurements on the mean and standard deviation for each measurement
  * Find the indices of all features that have "mean()" and"std()" from the features.txt file
  * Prepare the indices to be referenced in the alldata3 table by adding 2 to cater for subject and activity name.
  * Using the identified indices, subset and extract only the measurements on the mean and standard deviation for each measurement into alldata4.
* Assign the data set with descriptiive variable names
  * Assign the corresponding variable names found in feature table to the respective column header in alldata4.Note that subject and activity have already been assigned earlier.
* Creates a second, independent tidy data set with average of each variable for each activity and subject
  * Group alldata4 by subject and activity_name. Then compute the mean for each of the readings (columns). Final file is called finaldata.
* Upload tidy set of data
  * Use tabs, suppress row names, file written to is called M3Prjdata.txt
  * File output using write.table(finaldata, "M3Prjdata.txt", sep="\t", row.names=FALSE).
  * The output is a text file named M3Prjdata.txt ready for further analysis.