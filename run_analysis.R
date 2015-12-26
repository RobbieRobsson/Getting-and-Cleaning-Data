################
# run_analysis.R
################

# please note, that this skript doesn't stick to the proposed order of the requirements

# "features" contains the variable names for the test data set "X_test"
# "features" contains equal variable names, so make them unique first
names(X_test) <- make.unique(as.character(features$V2))
# do the same for the training data set "X_train"
names(X_train) <- make.unique(as.character(features$V2))
# Requirement No. 4 fulfilled: descriptive variable names

# "y_test" specifies the activity
# label it with "activity_labels"
# combine it with "X_test"
names(y_test) <- "Activity"
y_test$Activity <- factor(y_test$Activity, labels = activity_labels$V2)
X_test_A <- cbind(y_test, X_test)
# do the same for the training data set "X_train"
names(y_train) <- "Activity"
y_train$Activity <- factor(y_train$Activity, labels = activity_labels$V2)
X_train_A <- cbind(y_train,X_train)
# Requirement No. 3 fulfilled: descriptive activity names

# "subject_test" contains the specific persons
# add variable for group (test/training)
# combine person with "X_test_A"
names(subject_test) <- "Person"
subject_test$Group <- rep("test")
X_test_AP <- cbind(subject_test, X_test_A)
# do the same with the training data set
names(subject_train) <- "Person"
subject_train$Group <- rep("train")
X_train_AP <- cbind(subject_train, X_train_A)

##################################################################
# Requirements No. 3 and 4 for both training and test set fulfilled
##################################################################

# now merge the two data sets
merged.data.full <- rbind(X_train_AP, X_test_AP)
# Requirement No. 1 fulfilled

# extract the measurements of the mean and sd
library(dplyr)
merged.data <- select(merged.data.full, Person, Activity,
                      contains("mean"), contains("std"))
# Requirement No. 2 fulfilled

##################################
# Requirements No. 1 - 4 fulfilled
##################################

# form independent tidy data set for requirement No. 5
grouped <- group_by(merged.data, Activity, Person)
mean.grouped <- summarize_each(grouped, funs(mean))

print("DONE")