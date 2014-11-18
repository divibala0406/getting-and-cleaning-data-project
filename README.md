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
