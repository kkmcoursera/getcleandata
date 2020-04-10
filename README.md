# getcleandata

## Assignment for the Coursera 'Getting and Cleaning Data' course

The assignment for the *'Getting and Cleaning Data'* course requires the student to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

With this in mind, and closely following the requirements, as set out in the assignment instructions, a single R script has been written, to operate on an unzipped directory, already downloaded and placed into the working directory.

This script, **run_analysis.R**, will read the following input data sets:

 -- **activity_labels.txt** -- which provides actual text names corresponding to the activity codes, and,
 -- **features.txt** -- which contains the initial descriptive column headings for the test and training 'X'-type datasets.
 
Two directories exist to provide locations for the data recording durinng TEST and TRAINING phases.  Each contains the following datasets, which are used by the R script:

 -- **X_test.txt** (or X_train.txt) -- which contains the majority of the data points collected, with the exception of the associated activities and subjects.  These are included from the next two listed files.
 
 -- **y_test.txt** (or y_train.txt) -- contains the activity codes corresponding to the rows found in the aforementioned X-named file(s). These activity codes can be shown as descriptive text by using the labels from activity_labels.txt above.
 
 -- **subject_test.txt** (or subject_train.txt) -- contains the subject code numbers corresponding to the rows found in the aforementioned X-named file(s).
 
 The R script will input the files listed above, and then proceeds to tidy up the data according to the guidance provided in the assignment.  The script will write out two separate CSV formatted output data files, which may be separately inspected in MS Excel, if desired.  These are:
 
 -- **Tidy_Combined_DS_Test_and_Train.txt** -- which contains a combined dataset, resulting from both test and training input, enhanced with readable column headings, noted with activity description, type of record ('TEST' or 'TRAINING'), and a number relating the subject participating to generate the data row.  

A subset of the original recorded data point values has been reduced to only means and standard deviation type values, those with the following column name characteristics included within:
 
   mean(): Mean value
   std():  Standard deviation

  -- **Summary_by_Subject_and_Activity.txt** -- a second dataset, which will aggregate the data by subject number and activity type, and calculate an average of each recorded data column, previously selected for inclusion (that is, means and standard deviation values).
  
### Information about the R script code and the steps that it executes is detailed below:


*run_analysis.R* -- Assignment for the 'Getting and Cleaning Data' course

Required (for the arrange function): **'dplyr'** library

Prior to running the R script, the zip file was downloaded and extracted into the working directory.

The following steps were performed in the R script (as also referenced in the comments), to prepare a tidy dataset, and then, once complete, to also create a secondary, summary dataset of average values for the subset of column data prepared in the initial processing.

-- Set the location of the downloaded, unzipped datasets

-- Read in the Features column names and Activity labels datasets

-- Read in the TEST & TRAINING datasets

** Note: The below set of steps achieve ASSIGNMENT OBJECTIVE #2: **
   Extracts only the measurements on the mean and standard deviation for each measurement. 

-- Select only the columns representing Standard Deviation and Mean values

-- For the above selection, we ignore Mean Frequencies & Angles of Means

-- Remove '()' from the Column Headers because they are extraneous characters there

-- Isolate the columns from the datasets which contain Standard Deviation or Mean

** Note: The below set of steps achieve ASSIGNMENT OBJECTIVE #4: **
   Appropriately labels the data set with descriptive variable names.

-- Apply descriptive column headings

** Note: The below set of steps achieve ASSIGNMENT OBJECTIVE #3: **
   Uses descriptive activity names to name the activities in the data set.

-- Associate activity codes from the 'Y' file, convert to name, and apply as column 

-- Denote test dataset's source as "TEST", and training dataset's as "TRAINING"

-- Associate the subject code from "subject_test.txt" and apply as column

-- Associate the subject code from "subject_train.txt" and apply as column

** Note: The below set of steps achieve ASSIGNMENT OBJECTIVE #1: **
   Merges the training and the test sets to create one data set.

-- Merge the rows from both datasets into one combined

-- Write tidy data frame to a text format output file, in the original folder as the input


** Note: The below set of steps achieve ASSIGNMENT OBJECTIVE #5: **

   From the data set in step 4, creates a second, independent tidy data set 
   with the average of each variable for each activity and each subject.

-- Sort the resulting data frame

-- Average the detail data by subject number, and then, activity within subject

-- Perform some clean-up activity: Remove unneeded columns, fix column headings

-- Write results to a text format output file, in the original folder as the input










