###Read in necessary files

#test data set
xtest <- read.table("X_test.txt", sep="")
ytest <- read.table("y_test.txt")
subjtest <- read.table("subject_test.txt")

#training data set
xtrain <- read.table("X_train.txt", sep="")
ytrain <- read.table("y_train.txt")
subjtrain <- read.table("subject_train.txt")

#activity labels and features files
activity <- read.table("activity_labels.txt", sep="")
features <- read.table("features.txt", sep="")


###Part 1 - Merge test and train data sets to create one data set

#For the test data set of files, 
#form the subject, activity label and all feature readings into one data set called testok
test1 <- cbind(subjtest,ytest) ##bind subject to the activity label
names(test1) <- c("subject", "activity_label") ##assign column headers to the subject and activity label columns
testok <- cbind(test1, xtest) ## bind subject, activity label and readings to form table called testok

#For the train set of files, 
#form the subject, activity label and all feature readings into one data set called trainok
train1 <- cbind(subjtrain,ytrain) ##bind subject to the activity label
names(train1) <- c("subject", "activity_label") ##assign column headers to the subject and activity label columns
trainok <- cbind(train1, xtrain) ## bind subject, activity label and readings to form table called trainok

#Combine testok and trainok to form one big data set called alldata
alldata <- rbind(testok,trainok) ##combined data : 561(readings)+1(subject)+1(acitivity label) = 563 columns


###Part 3 - Use descriptive activity names to name the activities

names(activity) <- c("activity_label", "activity_name")  ##assign column header to activity table

#To ensure the row order is preserved before and after the merge :
alldata$temp_id  <- 1:nrow(alldata) ##create a temp variable which gives the row number of original alldata table
alldata1 <- merge(alldata, activity, by="activity_label", all=FALSE) ##merge, note that the rows are now sorted by activity 
alldata1 <- alldata1[order(alldata1$temp_id), ] ## reorder rows by the row number to get back the original order

#To remove the temp_id and the activity label (not needed now since the activity name has been merged) from alldata1
tpos_id <-grep("temp_id", names(alldata1),value=FALSE) ##determine the column index (value = F) of the temp_id
tpos_label <-grep("activity_label", names(alldata1),value=FALSE)  #determine the column index (value = F) of the activity_label
alldata2 <- alldata1[, -c(tpos_id, tpos_label)] ##remove the temp_id and activity label columns
alldata3 <- alldata2[,c(1,563,2:562)] ##reorder the columns : subject, activity name, readings


###Part 2 - Extract only measurements on the mean and standard deviation for each measurement

#find the indices of all features that have "mean()" and"std()" from the features.txt file
posmeanstd <- grep(("mean\\(\\)|std\\(\\)"), ignore.case = TRUE, features$V2, value=FALSE)
position <- posmeanstd+2 ##prepare the indices to be referenced in the alldata3 table. add 2 to include subject and activity name

#subset and extract only the measurements on the mean and standard deviation for each measurement into alldata4
alldata4 <- alldata3[,c(1,2,position)] 


###Part 4 - Assign the data set with descriptiive variable names

#assign the corresponding variable names found in feature table to the respective column header in alldata4
names(alldata4)[3:68] <- as.character(features[posmeanstd,2]) ##Note that column 1 and 2 have been assigned in Parts 1 and 3.


##Part 5 - Creates a second, independent tidy data set with average of each variable for each activity and subject

#group alldata4 by subject and activity_name. Then compute the mean for each of the readings 
library(plyr) ## required for ddply
finaldata <- ddply(alldata4, .(subject, activity_name), numcolwise(mean))


###Upload tidy set of data created in Part 5

# Use tabs, suppress row names, file written to is called data.txt
write.table(finaldata, "M3Prjdata.txt", sep="\t", row.names=FALSE) 
