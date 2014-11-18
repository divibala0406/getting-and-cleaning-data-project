High Level Description:
This repository hosts the R code and documentation files for the Data Science's track course "Getting and Cleaning data", available in coursera.
The dataset being used is: Human Activity Recognition Using Smartphones

Description of working logic of "run_analysis.R" script 
-------------------------------------------------------

Step 1 :Merge the training and test sets to create one data set 
---------------------------------------------------------------
Reads X training data text file in table format and creates a data frame

Reads y training data text file in table format and creates a data frame

Reads subject training data text file in table format and creates a data frame

Reads X testing training data text file in table format and creates a data frame

Reads y training data text file in table format and creates a data frame

Reads 'subject' training data text file in table format and creates a data frame
 
Merge training & testing 'x' data set 

Merge training & testing  'y' data set 

Merge training & testing 'subject' data set 


Step 2 :Extract only values on the mean and standard deviation for each measurement 
-----------------------------------------------------------------------------------
Read features data text file in table format and creates a data frame

Get only columns with mean() or std() in their names 

Subset the desired columns 

Correct the column names 


Step 3 :Use descriptive activity names to name the activities in the data set 
---------------------------------------------------------------------------- 
Reads activities lables text file in table format and creates a data frame

Update values with correct activity names 

Correct column name 
 

Step 4 :Appropriately label the data set with descriptive variable names 
-----------------------------------------------------------------------
Correct column name 

Bind all the data in a single data set 

 
Step 5 :Create a second, independent tidy data set with the average of each variable
------------------------------------------------------------------------------------
for each activity and subject 
------------------------------
Compute avearge values of each of 66 columns of activity & subject after excluding last 
two columns
 
Prints final averages_data data to text file 
