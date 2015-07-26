# Course Project for Getting and Cleaning Data
This is a repository for assignment code written for the Getting and Cleaning Data Coursera course.

This repository contains three items required for the course project:

	- README.md (file that explain what analysis file does)
	- Codebook  (description of each variable and codes)
	- run_analysis.R (R script for this course project)
In addition, a tidy data set was uploaded along with this URL during the assignment submission.

# What does run_analysis.R do?
run_analysis.R does the following (quoting from the assignment):

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Pre-requisition to execute run_analysis
1. This script assumes that the raw data from the Human Activity Recognition Using Smartphones is downloaded and unzipped in the working directory along with run_analysis.R.
2. The HAR project data is described at: 
	 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
3. The raw data to download is at:    	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
4. Unzip the raw data source into a folder name "getdata-projectfiles-UCI HAR Dataset" at your local drive, E.G "C:\UCI HAR Dataset\"
5. Put run_analysis.R into the same folder as per step 4.

# Steps to execute run_analysis
Refer to your own folder directory/name that you store your downloaded data (here we refer back to example in pre-requisition step 4), type setwd("C:\UCI HAR Dataset\"), followed by: source("run_analysis.R") in R Studio. 

# Tidy data output
A tidy data file will be created in the same folder, file name 'tidy-UCI-HAR-dataset-AVG.txt'.
It is tidy, and adheres to the four principles outlined below:

- Each measured variable is in one column
- Each observation is in a different row
- There is one table for each kind of variable
