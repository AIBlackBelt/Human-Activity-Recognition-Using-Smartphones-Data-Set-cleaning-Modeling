


####### First step before running the script #######
# provide setwd() with the folder path that contains this project (this is locally different for everyone, therefore you need to specify it)
setwd("your path")

# First we merge the training/test into a unified dataset containing 10299 record (7352 record for training data, 2947 record for test data )
X_train <- read.table(paste(getwd(),"/Raw data folder/train/X_train.txt",sep=""), quote="\"", comment.char="")
X_test <- read.table(paste(getwd(),"/Raw data folder/test/X_test.txt",sep=""), quote="\"", comment.char="")
merged_data = rbind(X_train,X_test)
# the resutling data files are located in the folder "Raw data older/dataset, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
y_train <- read.table(paste(getwd(),"/Raw data folder/train/y_train.txt",sep=""), quote="\"", comment.char="")
y_test <- read.table(paste(getwd(),"/Raw data folder/test/y_test.txt",sep=""), quote="\"", comment.char="")
merged_data_labels = rbind(y_train,y_test)
# the resutling data files are located in the folder "Raw data older/dataset, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
subject_train <- read.table(paste(getwd(),"/Raw data folder/train/subject_train.txt",sep=""), quote="\"", comment.char="")
subject_test <- read.table(paste(getwd(),"/Raw data folder/test/subject_test.txt",sep=""),, quote="\"", comment.char="")
merged_data = rbind(subject_train,subject_test)
# the resutling data files are located in the folder "Raw data older/dataset/Inertial Signals, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
body_acc_x_train <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_acc_x_train.txt",sep=""), quote="\"", comment.char="")
body_acc_x_test <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_acc_x_test.txt",sep=""), quote="\"", comment.char="")
merged_data = rbind(body_acc_x_train,body_acc_x_test)
# the resutling data files are located in the folder "Raw data older/dataset/Inertial Signals, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
body_acc_y_train <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_acc_y_train.txt",sep=""), quote="\"", comment.char="")
body_acc_y_test <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_acc_y_test.txt",sep=""), quote="\"", comment.char="")
merged_data = rbind(body_acc_y_train,body_acc_y_test)
# the resutling data files are located in the folder "Raw data older/dataset/Inertial Signals, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
body_acc_z_train <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_acc_z_train.txt",sep=""), quote="\"", comment.char="")
body_acc_z_test <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_acc_z_test.txt",sep=""), quote="\"", comment.char="")
merged_data = rbind(body_acc_z_train,body_acc_z_test)
# the resutling data files are located in the folder "Raw data older/dataset/Inertial Signals, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
body_gyro_x_train <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_gyro_x_train.txt",sep=""), quote="\"", comment.char="")
body_gyro_x_test <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_gyro_x_test.txt",sep=""), quote="\"", comment.char="")
merged_data = rbind(body_gyro_x_train,body_gyro_x_test)
# the resutling data files are located in the folder "Raw data older/dataset/Inertial Signals, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
body_gyro_y_train <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_gyro_y_train.txt",sep=""), quote="\"", comment.char="")
body_gyro_y_test <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_gyro_y_test.txt",sep=""), quote="\"", comment.char="")
merged_data = rbind(body_gyro_y_train,body_gyro_y_test)
# the resutling data files are located in the folder "Raw data older/dataset/Inertial Signals, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
body_gyro_z_train <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_gyro_z_train.txt",sep=""), quote="\"", comment.char="")
body_gyro_z_test <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/body_gyro_z_test.txt",sep=""), quote="\"", comment.char="")
merged_data = rbind(body_gyro_z_train,body_gyro_z_test)
# the resutling data files are located in the folder "Raw data older/dataset/Inertial Signals, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
total_acc_x_train <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/total_acc_x_train.txt",sep=""), quote="\"", comment.char="")
total_acc_x_test <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/total_acc_x_test.txt",sep=""), quote="\"", comment.char="")
merged_data = rbind(total_acc_x_train,total_acc_x_test)
# the resutling data files are located in the folder "Raw data older/dataset/Inertial Signals, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
total_acc_y_train <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/total_acc_y_train.txt",sep=""), quote="\"", comment.char="")
total_acc_y_test <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/total_acc_y_test.txt",sep=""), quote="\"", comment.char="")
merged_data = rbind(total_acc_y_train,total_acc_y_test)
# the resutling data files are located in the folder "Raw data older/dataset/Inertial Signals, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")
total_acc_z_train <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/total_acc_z_train.txt",sep=""), quote="\"", comment.char="")
total_acc_z_test <- read.table(paste(getwd(),"/Raw data folder/Inertial Signals/total_acc_z_test.txt",sep=""), quote="\"", comment.char="")
merged_data = rbind(total_acc_z_train,total_acc_z_test)
# the resutling data files are located in the folder "Raw data older/dataset/Inertial Signals, you can choose where to put them
write.csv(merged_data,"write the path where you want the output file to land")










# Now we import all the necessary resources for building a tidy dataset
features <- read.table(paste(getwd(),"/Raw data folder/features.txt",sep=""), quote="\"", comment.char="")
subject <- read.table(paste(getwd(),"/Raw data folder/dataset/subject.txt",sep=""), quote="\"", comment.char="")
label <- read.table(paste(getwd(),"/Raw data folder/dataset/label.txt",sep=""), quote="\"", comment.char="")
predictive_variables <- read.table(paste(getwd(),"/Raw data folder/predictive_variables.txt",sep=""), quote="\"", comment.char="")

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

# Next we reorder the columns so that the subject ID and activity type appears first
dataset = dataset[,c(80,81,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,82,83,84,85,86,87,88,89,90)]
dim(dataset)

# We extract the average of each variable for each activity and each subject and store them in two seperate datasets, we merge them into one dataset using rbind
average_per_activity = aggregate(x= dataset[,c(3:90)],by= list(dataset$`activity type`),FUN=mean)
average_per_subject = aggregate(x= dataset[,c(3:90)],by= list(dataset$ID),FUN=mean)
average_per_activity_subject = rbind(average_per_activity,average_per_subject)
dim(average_per_activity_subject)
write.table(average_per_activity_subject,paste(getwd(),"/output/average_per_activity_subject.txt",sep=""),row.names = FALSE)





    
