################
# Course Project
################

# Link to data
URL.data <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download ZIP-file
download.file(URL.data, destfile = "./data/Human.Activity.zip")

# Extract files from ZIP-file
# Read each file into R
ZIP <- "./data/Human.Activity.zip"
activity_labels <- read.table(unz(ZIP, "UCI HAR Dataset/activity_labels.txt"))
features <- read.table(unz(ZIP, "UCI HAR Dataset/features.txt"))
# Subfolder test
subject_test <- read.table(unz(ZIP, "UCI HAR Dataset/test/subject_test.txt"))
X_test <- read.table(unz(ZIP, "UCI HAR Dataset/test/X_test.txt"))
y_test <- read.table(unz(ZIP, "UCI HAR Dataset/test/y_test.txt"))
# Subfolder train
subject_train <- read.table(unz(ZIP, "UCI HAR Dataset/train/subject_train.txt"))
X_train <- read.table(unz(ZIP, "UCI HAR Dataset/train/X_train.txt"))
y_train <- read.table(unz(ZIP, "UCI HAR Dataset/train/y_train.txt"))

# Run analysis
source("run_analysis.R")

# Write the results to a text file
write.table(mean.grouped, file = "./data/FinalTidyData.txt", row.names = F)
