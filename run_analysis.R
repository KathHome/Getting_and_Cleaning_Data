#setwd('./getdata-projectfiles-UCI HAR Dataset')
# Directory and filename (txt or csv) of the clean/tidy data:
tidyDataFile <- "./tidy-UCI-HAR-dataset.txt"
# Directory and filename (.txt) of the clean/tidy data
tidyDataFileAVGtxt <- "./tidy-UCI-HAR-dataset-AVG.txt"

# 1. Read data from text file and assign to variables 

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# 2. Merges the training and the test sets to create one data set.
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
s <- rbind(subject_train, subject_test)


# 3. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("UCI HAR Dataset/features.txt")
indices_of_good_features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
x <- x[, indices_of_good_features]
names(x) <- gsub("\\(|\\)", "", (features[indices_of_good_features, 2]))
names(x) <- tolower(names(x))

# 4. Uses descriptive activity names to name the activities in the data set.

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))
y[,1] = activities[y[,1], 2]
names(y) <- "Activity"
names(s) <- "Subject"

tidyDataSet <- cbind(s, y, x)

# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject:
p <- tidyDataSet[, 3:dim(tidyDataSet)[2]] 
tidyDataAVGSet <- aggregate(p,list(tidyDataSet$Subject, tidyDataSet$Activity), mean)

# Activity and Subject name of columns 
names(tidyDataAVGSet)[1] <- "Subject"
names(tidyDataAVGSet)[2] <- "Activity"

# Created csv (tidy data set) in diretory
write.table(tidyDataSet, tidyDataFile)
# Created csv (tidy data set AVG) in diretory
write.table(tidyDataAVGSet, tidyDataFileAVGtxt,row.name=FALSE)