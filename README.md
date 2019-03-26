# Peer-graded Assignment: Getting and Cleaning Data Course Project
This is the course project for the Getting and Cleaning Data Coursera course.

This repository contains the following files:
* README.md: this file, contains an overview of the data set and describes contents of the repository
* tidydata.txt: contains the tidy data set created by the 'run_analysis.txt' script
* CodeBook.md: describes the data, the variables and the transformations to process the dataset into a tidy dataset
* run_analysis.R: the main script used to generate the data set 
run_analysis.R script using R version 3.4.1 (2017-06-30) on Windows 10 64-bit edition.

# Data source
The raw data are the following:
* features_info.txt: Shows information about the variables used on the feature vector
* features.txt: List of all features
* activity_labels.txt: Links the class labels with their activity name
* train/X_train.txt: Training set
* train/y_train.txt: Training labels
* test/X_test.txt: Test set
* test/y_test.txt: Test labels

The following files are available for the train and test data. Their descriptions are equivalent. 
* train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
* train/Inertial Signals/total_acc_x_train.txt: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis
* train/Inertial Signals/body_acc_x_train.txt: The body acceleration signal obtained by subtracting the gravity from the total acceleration
* train/Inertial Signals/body_gyro_x_train.txt: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

For each record it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration
* Triaxial Angular velocity from the gyroscope
* A 561-feature vector with time and frequency domain variables
* Its activity label
* An identifier of the subject who carried out the experiment

# Process
The process to get tidy dataset from the raw dataset involves the following transformations: 
1 - Merge the training and the test sets to create one data set
2 - Extract only the measurements on the mean and standard deviation for each measurement
3 - Use descriptive activity names to name the activities in the data set
4 - Appropriately labels the data set with descriptive variable names
5 - From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject




Appropriately labeled the data set with descriptive variable names.

From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.