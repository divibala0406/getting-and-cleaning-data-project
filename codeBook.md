R programm run_analysis.R performs following 5 steps as described in the project:
  1.Merges the training and the test sets to create one data set.
  2.Extracts only the measurements on the mean and standard deviation for each measurement. 
  3.Uses descriptive activity names to name the activities in the data set
  4.Appropriately labels the data set with descriptive variable names. 
  5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Decription of Variables used in the R programm:
  x_test -> x testing data read from X_text.txt file
  y_test -> y testing data read from y_test.txt file
  subject_test -> subject used to generate testing data read from   subject_test.txt file
  
  x_train -> x training data read from X_train.txt file
  y_train -> y training data read from y_train.txt file
  subject_train -> subject used to generate training data read from subject_train.txt file
  
Transformation used to clean up data:
  Merge both testing and training for each X, y & subject datasets individually
  Get only columns with names containing mean() or std() and subsetting the desired columns and store it x_data
  correct and tidy the column names by removing hyphens, brackets and abbreviating long words like 
  "magnitude" and "acceleration" to  "mag" and "acc" respectively. Tidy up last 6 column names that have bodybody"      string to "body"
  Use descriptive activity names to name the activities in the data set by reading from activities_labels.txt
  Update values with correct activity names

  
Data Set information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The training data are stored in X_train, y_train and individuals used to generate training data are stored in  subject_train files.
The test data are stroed in X_test, y_test and individuals used to generate test data are stored in subject_test files
Label the data set with descriptive variable names.
  
Activity Labels:
  1 WALKING
  2 WALKING_UPSTAIRS
  3 WALKING_DOWNSTAIRS
  4 SITTING
  5 STANDING
  6 LAYING


