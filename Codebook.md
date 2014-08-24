---
title: "Codebook"
author: "by arjay314"
date: "08/23/2014"
output: html_document
---
###Process Overview

The average_mean_and_sd.txt file (tidy data set) was generated from the original UCI HAR Dataset files.

1) Read in the feature/column names and activity names into separate data structures. These pertain to both test and training data sets.

2) Use grep to subset the feature names, extracting only mean and standard deviation column names.

3) Read in the Test data set and use the subset information from step 2 to extract only the needed columns.

4) Read in the Test Subject and Activity data sets, and merge the Subject and Activity columns into the Test data set extract prepared in step 3.

5) Repeat the process from steps 3 and 4 on the Train data set.

6) Merge the Test and Train extracts and translate the Activity column codes to text descriptions.

7) Generate a new, aggregate data structure which averages all columns by Subject and Activity.

8) Give descriptive names to the columns, and write the aggregate data to a text file.

The above is a condensed view of the process, For a more granular description please see the comments in run_analysis.R.

###Columns in the average_mean_and sd.txt file.

Every numeric column in the output data set is an average by Subject and Activity. Column names like "colname-XYZ" actually represent a sequence of three columns: colname-X, colname-Y, and colname-Z.

### Column Names

* Subject
* Activity
* avg-tBodyAcc-mean()-XYZ
* avg-tBodyAcc-std()-XYZ
* avg-tGravityAcc-mean()-XYZ
* avg-tGravityAcc-std()-XYZ
* avg-tBodyAccJerk-mean()-XYZ
* avg-tBodyAccJerk-std()-XYZ
* avg-tBodyGyro-mean()-XYZ
* avg-tBodyGyro-std()-XYZ
* avg-tBodyGyroJerk-mean()-XYZ
* avg-tBodyGyroJerk-std()-XYZ
* avg-tBodyAccMag-mean()
* avg-tBodyAccMag-std()
* avg-tGravityAccMag-mean()
* avg-tGravityAccMag-std()
* avg-tBodyAccJerkMag-mean()
* avg-tBodyAccJerkMag-std()
* avg-tBodyGyroMag-mean()
* avg-tBodyGyroMag-std()
* avg-tBodyGyroJerkMag-mean()
* avg-tBodyGyroJerkMag-std()
* avg-fBodyAcc-mean()-XYZ
* avg-fBodyAcc-std()-XYZ
* avg-fBodyAcc-meanFreq()-XYZ
* avg-fBodyAccJerk-mean()-XYZ
* avg-fBodyAccJerk-std()-XYZ
* avg-fBodyAccJerk-meanFreq()-XYZ
* avg-fBodyGyro-mean()-XYZ
* avg-fBodyGyro-std()-XYZ
* avg-fBodyGyro-meanFreq()-XYZ
* avg-fBodyAccMag-mean()
* avg-fBodyAccMag-std()
* avg-fBodyAccMag-meanFreq()
* avg-fBodyBodyAccJerkMag-mean()
* avg-fBodyBodyAccJerkMag-std()
* avg-fBodyBodyAccJerkMag-meanFreq()
* avg-fBodyBodyGyroMag-mean()
* avg-fBodyBodyGyroMag-std()
* avg-fBodyBodyGyroMag-meanFreq()
* avg-fBodyBodyGyroJerkMag-mean()
* avg-fBodyBodyGyroJerkMag-std()
* avg-fBodyBodyGyroJerkMag-meanFreq()
