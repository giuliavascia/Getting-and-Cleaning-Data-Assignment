library(dplyr)

# Download and unzip data ----------------------------------------

# create directory where save data
dirname <- "./Assignment4"
dir.create(file.path(dirname), showWarnings = FALSE)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename <-paste0(dirname, "/data.zip")
download.file(fileUrl, destfile = filename)

unzip(zipfile = filename, exdir = dirname)

# check the zip file and the name of the folder that has been unzipped
list.files(dirname)
pathfiles <- file.path(dirname, "UCI HAR Dataset")

# Read data ----------------------------------------

# Train tables
x_train <- read.table(file.path(pathfiles, "train", "X_train.txt"),header = FALSE)
y_train <- read.table(file.path(pathfiles, "train", "y_train.txt"),header = FALSE)
subject_train <- read.table(file.path(pathfiles, "train", "subject_train.txt"),header = FALSE)

# Test tables
x_test <- read.table(file.path(pathfiles, "test", "X_test.txt"),header = FALSE)
y_test <- read.table(file.path(pathfiles, "test", "y_test.txt"),header = FALSE)
subject_test <- read.table(file.path(pathfiles, "test", "subject_test.txt"),header = FALSE)

# Read feature and activity vectors
features <- read.table(file.path(pathfiles, 'features.txt'))
activity_labels <- read.table(file.path(pathfiles, 'activity_labels.txt'))

# Merges the training and the test sets to create one data set ----------------------------------------

x_total <- rbind(x_train, x_test)
y_total <- rbind(y_train, y_test)
subject_total <- rbind(subject_train, subject_test)

# Extracts only the measurements on the mean and standard deviation for each measurement ----------------------------------------

features_selected <- features[grep("mean|std",features[,2]),]
x_total <- x_total[,features_selected[,1]]

# Uses descriptive activity names to name the activities in the data set ----------------------------------------

colnames(x_total)   <- features_selected[,2]
colnames(y_total)   <- "activity"
colnames(subject_total) <- "subject"

# Merge final dataset
merged_data <- cbind(subject_total, y_total, x_total)

# Activities Subjects into factors 
merged_data$activity <- factor(merged_data$activity, levels = activity_labels[,1], labels = activity_labels[,2]) 
merged_data$subject  <- as.factor(merged_data$subject) 

# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject ----------------------------------------

tidy <- merged_data %>% 
  group_by(activity, subject) %>% 
  summarize_all(funs(mean)) 

# Export summary dataset
write.table(tidy, file = file.path(pathfiles,'tidydata.txt'), row.names = FALSE, col.names = TRUE) 
