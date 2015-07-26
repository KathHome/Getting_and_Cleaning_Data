#Codebook for Getting and Cleaning Data Course Project

The attached R script (run_analysis.R) performs the following to clean up the data:

- Merges the training and test sets to create one data set, namely train/X_train.txt with test/X_test.txt, the result of which is a 10299x561 data frame, as in the original description ("Number of Instances: 10299" and "Number of Attributes: 561"), train/subject_train.txt with test/subject_test.txt, the result of which is a 10299x1 data frame with subject IDs, and train/y_train.txt with test/y_test.txt, the result of which is also a 10299x1 data frame with activity IDs.

- Reads features.txt and extracts only the measurements on the mean and standard deviation for each measurement. The result is a 10299x66 data frame, because only 66 out of 561 attributes are measurements on the mean and standard deviation. All measurements appear to be floating point numbers in the range (-1, 1).

- Reads activity_labels.txt and applies descriptive activity names to name the activities in the data set:
  laying
  standing
  sitting
  walking
  walkingdownstairs
  walkingupstairs
  
- The script also appropriately labels the data set with descriptive names: all feature names (attributes) and activity names are converted to lower case, underscores and brackets () are removed. Then it merges the 10299x66 data frame containing features with 10299x1 data frames containing activity labels and subject IDs. The result is saved as merged_clean_data.txt, a 10299x68 data frame such that the first column contains subject IDs, the second column activity names, and the last 66 columns are measurements. Subject IDs are integers between 1 and 30 inclusive. The names of the attributes as following:

  - tbodyacc_mean_x
  - tbodyacc-mean-y
  - tbodyacc-mean-z
  - tbodyacc-std-x
  - tbodyacc-std-y
  - tbodyacc-std-z
  - tgravityacc-mean-x
  - tgravityacc-mean-y
  - tgravityacc-mean-z
  - tgravityacc-std-x
  - tgravityacc-std-y
  - tgravityacc-std-z
  - tbodyaccjerk-mean-x
  - tbodyaccjerk-mean-y
  - tbodyaccjerk-mean-z
  - tbodyaccjerk-std-x
  - tbodyaccjerk-std-y
  - tbodyaccjerk-std-z
  - tbodygyro-mean-x
  - tbodygyro-mean-y
  - tbodygyro-mean-z
  - tbodygyro-std-x
  - tbodygyro-std-y
  - tbodygyro-std-z
  - tbodygyrojerk-mean-x
  - tbodygyrojerk-mean-y
  - tbodygyrojerk-mean-z
  - tbodygyrojerk-std-x
  - tbodygyrojerk-std-y
  - tbodygyrojerk-std-z
  - tbodyaccmag-mean
  - tbodyaccmag-std
  - tgravityaccmag-mean
  - tgravityaccmag-std
  - tbodyaccjerkmag-mean
  - tbodyaccjerkmag-std 
  - tbodygyromag-mean 
  - tbodygyromag-std  
  - tbodygyrojerkmag-mean
  - tbodygyrojerkmag-std 
  - fbodyacc-mean-x   
  - fbodyacc-mean-y   
  - fbodyacc-mean-z   
  - fbodyacc-std-x
  - fbodyacc-std-y     
  - fbodyacc-std-z    
  - fbodyaccjerk-mean-x 
  - fbodyaccjerk-mean-y 
  - fbodyaccjerk-mean-z
  - fbodyaccjerk-std-x 
  - fbodyaccjerk-std-y 
  - fbodyaccjerk-std-z 
  - fbodygyro-mean-x  
  - fbodygyro-mean-y
  - fbodygyro-mean-z  
  - fbodygyro-std-x   
  - fbodygyro-std-y   
  - fbodygyro-std-z   
  - fbodyaccmag-mean  
  - fbodyaccmag-std
  - fbodybodyaccjerkmag-mean 
  - fbodybodyaccjerkmag-std 
  - fbodybodygyromag-mean 
  - fbodybodygyromag-std
  - fbodybodygyrojerkmag-mean 
  - fbodybodygyrojerkmag-std

- Finally, the script creates a 2nd, independent tidy data set with the average of each measurement for each activity and each subject. The result is saved as tidy-UCI-HAR-dataset-AVG.txt, a 180x68 data frame, where as before, the first column contains subject IDs, the second column contains activity names, and then the averages for each of the 66 attributes are in columns 3- 68. There are 30 subjects and 6 activities, thus 180 rows in this data set with averages.
