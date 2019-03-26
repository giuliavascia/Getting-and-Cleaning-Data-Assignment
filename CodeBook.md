# Data set
tidydata.txt file contains a tidy data set in which for each row there are information about 'subject' and 'activity' that uniquely identify a row of the data set.
- subject: identify of the test subject, integert with range from 1 to 30
- activity: the activity performed, possible values:
*WALKING: subject was walking
*WALKING_UPSTAIRS: subject was walking upstairs
*WALKING_DOWNSTAIRS: subject was walking downstairs
*SITTING: subject was sitting
*STANDING: subject was standing
*LAYING: subject was laying

# Process
The process to get tidy dataset from the raw dataset involves the following transformations: 
1 - Merge the training and the test sets to create one data set
2 - Extract only the measurements on the mean and standard deviation for each measurement
3 - Use descriptive activity names to name the activities in the data set
4 - Appropriately labels the data set with descriptive variable names
5 - From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject
