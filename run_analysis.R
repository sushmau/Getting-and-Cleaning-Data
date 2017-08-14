
install.packages("dplyr")
install.packages("plyr")


### Merges the training and the test sets to create one data set.

#Read in overall data
activity_label <- read.table("./activity_labels.txt",header=FALSE)
features <- read.table("./features.txt",header=FALSE)

#Read in train data
subject_train <-read.table("./train/subject_train.txt", header=FALSE)
xtrain <- read.table("./train/X_train.txt", header=FALSE)
ytrain <- read.table("./train/y_train.txt", header=FALSE)

#Read in test data
subject_test <-read.table("./test/subject_test.txt", header=FALSE)
xtest <- read.table("./test/X_test.txt", header=FALSE)
ytest <- read.table("./test/y_test.txt", header=FALSE)

#Assign column names
colnames(activity_label)<-c("activity_id","activity_type")
colnames(subject_train) <- "subject_id"
colnames(xtrain) <- features[,2]
colnames(ytrain) <- "activity_id"
colnames(subject_test) <- "subject_id"
colnames(xtest) <- features[,2]
colnames(ytest) <- "activity_id"

#Merge data sets
train_data <- cbind(ytrain,subject_train,xtrain)
test_data <- cbind(ytest,subject_test,xtest)
overall_data <- rbind(train_data,test_data)



#Extracts only the measurements on the mean and standard deviation for each measurement.
mean_std <-ovearll_data[,grepl("mean|std|subject|activity_id",colnames(ovearll_data))]

#Uses descriptive activity names to name the activities in the data set
mean_std <- merge(activity_id, mean_std , by="activity_id", all.x=TRUE)


#Appropriately labels the data set with descriptive variable names.
names(mean_std) <- gsub("Acc", "Acceleration", names(mean_std))
names(mean_std) <- gsub("BodyBody", "Body", names(mean_std))
names(mean_std) <- gsub("^f", "Frequency", names(mean_std))
names(mean_std) <- gsub("Mag", "Magnitude", names(mean_std))
names(mean_std) <- gsub("mean", "Mean", names(mean_std))
names(mean_std) <- gsub("std", "Stdev", names(mean_std))
names(mean_std) <- gsub("^t", "Time", names(mean_std))


#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
write.table(mean_std, "TidyData.txt", row.name=FALSE)
