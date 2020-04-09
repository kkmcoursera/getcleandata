##
#  run_analysis.R -- Assignment for the 'Getting and Cleaning Data' course
##

# Required (for the arrange function): dplyr library
install.packages("dplyr")
library(dplyr)

# Please note that the zip file has previously been downloaded and extracted into the 
# working directory below.
#
# Set the location of the downloaded, unzipped datasets
setwd("C:/Users/KkM/Desktop/UCI_HAR_ds/")

# Read in the Features column names and Activity labels datasets
f <- read.table("./Features.txt")
act_labels  <- read.table("./activity_labels.txt")

# Read in the TEST & TRAINING datasets
x_test  <- read.table("./test/x_test.txt")
y_test  <- read.table("./test/y_test.txt")
s_test  <- read.table("./test/subject_test.txt")

x_train <- read.table("./train/x_train.txt")
y_train <- read.table("./train/y_train.txt")
s_train  <- read.table("./train/subject_train.txt")

# Select only the columns representing Standard Deviation and Mean values
sel_cols <- grep("mean|std", f$V2)
f2 <- f[sel_cols, ]

# Note: For the above selection, we ignore Mean Frequencies & Angles of Means
sel_col2 <- grep("meanFreq|angle", f2$V2, invert = TRUE)

# Remove () from the Column Headers because they are extraneous characters there
f_sel <- sub("\\(\\)", "", f2[sel_col2, 2])

# ASSIGNMENT OBJECTIVE #2: 
# Extracts only the measurements on the mean and standard deviation for each measurement. 
#
# Isolate the columns from the datasets which contain Standard Deviation or Mean
x_sel_test <- x_test[ , sel_col2]
x_sel_train <- x_train[ , sel_col2]

# ASSIGNMENT OBJECTIVE #4: 
# Appropriately labels the data set with descriptive variable names.
#
# Apply descriptive column headings
names(x_sel_test) <- f_sel
names(x_sel_train) <- f_sel

# ASSIGNMENT OBJECTIVE #3: 
# Uses descriptive activity names to name the activities in the data set.
#
# Associate activity codes from the 'Y' file, convert to name, and apply as column 
act_test <- y_test[, 1]
act_vect <- act_labels$V2
act_name <- act_vect[act_test]
x_sel_test <- cbind(activity=act_name, x_sel_test)

act_train <- y_train[, 1]
act_name <- act_vect[act_train]
x_sel_train <- cbind(activity=act_name, x_sel_train)

# Denote test dataset's source as "TEST", and training dataset's as "TRAINING"
x_sel_test <- cbind(source="TEST", x_sel_test)
x_sel_train <- cbind(source="TRAINING", x_sel_train)

# Associate the subject code from "subject_test.txt" and apply as column
subj_test <- s_test[1, ]
x_sel_test <- cbind(subject=s_test, x_sel_test)

# Associate the subject code from "subject_train.txt" and apply as column
subj_train <- s_train[1, ]
x_sel_train <- cbind(subject=s_train, x_sel_train)

# ASSIGNMENT OBJECTIVE #1: 
# Merges the training and the test sets to create one data set.
#
# Merge the rows from both datasets into one combined
# 

x_combined <- rbind(x_sel_test, x_sel_train)
names(x_combined)[1] <- "subject"

# Write tidy data frame to a CSV format out file, in the original folder as the input
write.csv(x_combined, file = "./Tidy_Combined_DS_Test_and_Train.csv", row.names = FALSE)


# ASSIGNMENT OBJECTIVE #5: 
# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
#
# Sort the resulting data frame
x_sorted <- arrange(x_combined, subject, activity)

# Average the detail data by subject number, and then, activity within subject
x_average <- aggregate(x = x_sorted, by = list(factor(x_sorted$activity), factor(x_sorted$subject)), FUN = "mean")

# Perform some clean-up activity: Remove unneeded columns, fix column headings
x_output <- subset(x_average, select = -c(source, activity))
names(x_output)[1] <- "Activity"
names(x_output)[2] <- "Subject"
x_output <- subset(x_output, select = -c(subject))

# Write results to a CSV format out file, in the original folder as the input
write.csv(x_output, file = "./Summary_by_Subject_and_Activity.csv", row.names = FALSE)



