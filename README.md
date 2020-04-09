# getcleandata
Assignment Repository for the 'Getting and Cleaning Data' course

The assignment for the 'Getting and Cleaning Data' course requires the student to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

With this in mind, and closely following the requirements, as set out in the assignment instructions, a single R script has been written, to operate on an unzipped directory, already downloaded and placed into the working directory.

This script, run_analysis.R, will read the following input data sets:

 -- activity_labels.txt -- which provides actual text names corresponding to the activity codes, and,
 -- features.txt -- which contains the initial descriptive column headings for the test and training 'X'-type datasets.
 
Two directories exist to provide locations for the data recording durinng TEST and TRAINING phases.  Each contains the following datasets, which are used by the R script:

 -- X_test.txt (or X_train.txt) -- which contains the majority of the data points collected, with the exception of the associated activities and subjects.  These are included from the next two listed files
 -- y_test.txt (or y_train.txt) -- contains the activity codes corresponding to the rows found in the aforementioned X-named file(s). These activity codes can be shown as descriptive text by using the labels from activity_labels.txt above.
 -- subject_test.txt (or subject_train.txt) -- contains the subject code numbers corresponding to the rows found in the aforementioned X-named file(s).
 
 The R script will input the files listed above, and then proceeds to tidy up the data according to the guidance provided in the assignment.  The script will write out two separate CSV formatted output data files, which may be separately inspected in MS Excel, if desired.  These are:
 
 -- Tidy_Combined_DS_Test_and_Training.csv -- which contains a combined dataset, resulting from both test and training input, enhanced with readable column headings, noted with activity description, type of record ('TEST' or 'TRAINING'), and a number relating the subject participating to generate the data row.  A subset of the original recorded data point values has been reduced to only means and standard deviation type values.
  -- Summary_by_Subject_and_Activity.csv -- a second dataset, which will aggregate the data by subject number and activity type, and calculate an average of each recorded data column, previously selected for inclusion (that is, means and standard deviation values).
