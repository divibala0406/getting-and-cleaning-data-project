library(plyr) 


# Step 1 


# Merge the training and test sets to create one data set 

 
#-------------------------------------------------------------

#Reads X training data text file in table format and creates a data frame

x_train <- read.table("train/X_train.txt")


#Reads y training data text file in table format and creates a data frame

y_train <- read.table("train/y_train.txt")


#Reads subject training data text file in table format and creates a data frame

subject_train <- read.table("train/subject_train.txt")


#Reads X testing training data text file in table format and creates a data frame

x_test <- read.table("test/X_test.txt")


#Reads y training data text file in table format and creates a data frame

y_test <- read.table("test/y_test.txt") 


##Reads 'subject' training data text file in table format and creates a data frame

subject_test <- read.table("test/subject_test.txt") 


# Merge training & testing 'x' data set 

x_data <- rbind(x_train, x_test) 


# Merge training & testing  'y' data set 

y_data <- rbind(y_train, y_test) 


# Merge training & testing 'subject' data set 

subject_data <- rbind(subject_train, subject_test) 



# Step 2 


# Extract only values on the mean and standard deviation for each measurement 


#-------------------------------------------------------------------------------------- 

# Read features data text file in table format and creates a data frame

features <- read.table("features.txt") 


# get only columns with mean() or std() in their names 

mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2]) 


# subset the desired columns 

x_data <- x_data[, mean_and_std_features] 


# correct the column names 

names(x_data) <- features[mean_and_std_features, 2] 


# Step 3 


# Use descriptive activity names to name the activities in the data set 


#---------------------------------------------------------------------- 

# Reads activities lables text file in table format and creates a data frame

activities <- read.table("activity_labels.txt") 


# update values with correct activity names 

y_data[, 1] <- activities[y_data[, 1], 2] 

 
# correct column name 


names(y_data) <- "activity" 


# Step 4 


# Appropriately label the data set with descriptive variable names 


#-------------------------------------------------------------------


# correct column name 


names(subject_data) <- "subject" 


# bind all the data in a single data set 


all_data <- cbind(x_data, y_data, subject_data) 


# Step 5 


# Create a second, independent tidy data set with the average of each variable 

# for each activity and each subject 

 
#-------------------------------------------------------------------------- 


# Avearge values of each of 66 columns of activity & subject after excluding last two columns

averages_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66])) 


# Prints final averages_data data into text file 

write.table(averages_data, "averages_data.txt", row.name=FALSE) 
