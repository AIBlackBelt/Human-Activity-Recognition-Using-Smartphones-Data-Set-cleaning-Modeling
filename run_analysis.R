
# First we merge the training/dataset into a unified dataset containing 10299 record (7352 record for training data, 2947 record for test data )
X_train <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")
X_test <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="")
merged_data = rbind(X_train,X_test)
y_train <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/train/y_train.txt", quote="\"", comment.char="")
y_test <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/test/y_test.txt", quote="\"", comment.char="")
merged_data_labels = rbind(y_train,y_test)
subject_train <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/train/subject_train.txt", quote="\"", comment.char="")
subject_test <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/test/subject_test.txt", quote="\"", comment.char="")
merged_data_ids = rbind(subject_train,subject_test)
write.csv(merged_data,"..")
write.csv(merged_data_labels,"..")
write.csv(merged_data_ids,"..")
body_acc_x_train <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", quote="\"", comment.char="")
body_acc_x_test <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", quote="\"", comment.char="")
merged_data = rbind(body_acc_x_train,body_acc_x_test)
write.csv(merged_data)
body_acc_y_train <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", quote="\"", comment.char="")
body_acc_y_test <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", quote="\"", comment.char="")
merged_data = rbind(body_acc_y_train,body_acc_y_test)
.
.
.
.








# Now we import all the necessary resources for building a tidy dataset
features <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/features.txt", quote="\"", comment.char="")
subject <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/dataset/subject.txt", quote="\"", comment.char="")
label <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/dataset/label.txt", quote="\"", comment.char="")
predictive_variables <- read.table("~/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/dataset/predictive_variables.txt", quote="\"", comment.char="")

# We extract only the measurements on mean and std these commands allows us to see all the variables names that refers to a mean or std measurement, using regular expression
grep("mean",features$V2)
grep("mean",features$V2,value="TRUE")
grep("std",features$V2)
grep("std",features$V2,value="TRUE")

#We are now labeling all the columns in the dataset 
for (i in 1:561){
  
  names(predictive_variables)[i] <- features$V2[i]
}

#Next we extract subsets of columns that corresponds to a certain mean or std measurement
extracted_mean_features = predictive_variables[,grep("mean",features$V2)]

extracted_std_features = predictive_variables[,grep("std",features$V2)]
all_columns_names = c(grep("mean",features$V2,value = "TRUE"),grep("std",features$V2,value = "TRUE"))
all_columns_indices = c(grep("mean",features$V2),grep("std",features$V2))
dataset = predictive_variables[,all_columns_indices]

#Next we add the ID column that refers to the subject which conducted the experiement,as well as the activity label for each experiment
dataset["ID"] = subject
dataset["activity type"] = label

# We label correctly the activity type correctly using character instead of ints
for (i in grep("5",dataset$`activity type`)){
  dataset$`activity type`[i] = "STANDING"
}
for (i in grep("1",dataset$`activity type`)){
  dataset$`activity type`[i] = "WALKING"
}
for (i in grep("2",dataset$`activity type`)){
  dataset$`activity type`[i] = "WALKING_UPSTAIRS"
}
for (i in grep("3",dataset$`activity type`)){
  dataset$`activity type`[i] = "WALKING_DOWNSTAIRS"
}
for (i in grep("4",dataset$`activity type`)){
  dataset$`activity type`[i] = "SITTING"
}
for (i in grep("6",dataset$`activity type`)){
  dataset$`activity type`[i] = "LAYING"
}

# We extract the average of each variable for each activity and each subject and store them in two seperate datasets 
write.csv(aggregate(x= dataset[,1:79],by= list(dataset$`activity type`),FUN=mean),"/home/dark/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/average_per_activity.csv")
write.csv(aggregate(x= dataset[,1:79],by= list(dataset$ID),FUN=mean),"/home/dark/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/average_pe_rsubject_id.csv")

#Next we move to the inertial signals, each records contains 128 sample as stated in the documentation, therefore we compute the sample mean instead and integrate it into the original dataset instead of including the entire sample (128 for each measure, we have 9 measures which will give in total 1152 another column to be added, but instead only 9 column will be added since we take the mean instead of the entire sample)
body_acc_x_av = as.data.frame(rowMeans(body_acc_x))
dataset["body_acc_x_av"] = body_acc_x_av
body_acc_y_av = as.data.frame(rowMeans(body_acc_y))
dataset["body_acc_y_av"] = body_acc_y_av
body_acc_z_av = as.data.frame(rowMeans(body_acc_z))
dataset["body_acc_z_av"] = body_acc_z_av
body_gyro_x_av = as.data.frame(rowMeans(body_gyro_x))
dataset["body_gyro_x_av"] = body_gyro_x_av
body_gyro_y_av = as.data.frame(rowMeans(body_gyro_y))
dataset["body_gyro_y_av"] = body_gyro_y_av
body_gyro_z_av = as.data.frame(rowMeans(body_gyro_z))
dataset["body_gyro_z_av"] = body_gyro_z_av
total_acc_x_av = as.data.frame(rowMeans(total_acc_x))
dataset["total_acc_x_av"] = total_acc_x_av
total_acc_y_av = as.data.frame(rowMeans(total_acc_y))
dataset["total_acc_y_av"] = total_acc_y_av
total_acc_z_av = as.data.frame(rowMeans(total_acc_z))
dataset["total_acc_z_av"] = total_acc_z_av

#we add the new columns into the dataset and save it in csv format
write.csv(dataset,"/home/dark/Mywork/Getting and cleaning data Coursera/getdata_projectfiles_UCI HAR Dataset(1)/UCI HAR Dataset/tidy dataset/deliverable.csv")


    
