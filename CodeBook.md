Data description :

The aim of this dataset is to be able to predict what activity a smartphone user is commiting to (WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING. Experiments were conducted by group of 30 volunteers within an age bracket of 19-48 years. Each person performed all six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. This smartphone is equiped with a couple sensors (accelerometer and gyroscope) that capture 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. Each records (row) of the dataset presents one experiments made by the user (ID's are included to identify the user). The columns represents the different measurements regarding the axials linear acceleration, axials angular velocity since the measures were taken as samples, we extracted only the samples means and standard deviations. 


Variables : 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.We extracted only the measurements on the mean and standard deviation.
Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

[1] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
[3] "tBodyAcc-mean()-Z"               "tGravityAcc-mean()-X"           
[5] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"           
[7] "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
[9] "tBodyAccJerk-mean()-Z"           "tBodyGyro-mean()-X"             
[11] "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
[13] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[15] "tBodyGyroJerk-mean()-Z"          "tBodyAccMag-mean()"             
[17] "tGravityAccMag-mean()"           "tBodyAccJerkMag-mean()"         
[19] "tBodyGyroMag-mean()"             "tBodyGyroJerkMag-mean()"        
[21] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[23] "fBodyAcc-mean()-Z"               "fBodyAcc-meanFreq()-X"          
[25] "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
[27] "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
[29] "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-meanFreq()-X"      
[31] "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[33] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[35] "fBodyGyro-mean()-Z"              "fBodyGyro-meanFreq()-X"         
[37] "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"  
[39] "fBodyAccMag-mean()"              "fBodyAccMag-meanFreq()"         
[41] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-meanFreq()" 
[43] "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-meanFreq()"    
[45] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-meanFreq()"
[47] "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"               
[49] "tBodyAcc-std()-Z"                "tGravityAcc-std()-X"            
[51] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[53] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"           
[55] "tBodyAccJerk-std()-Z"            "tBodyGyro-std()-X"              
[57] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
[59] "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"          
[61] "tBodyGyroJerk-std()-Z"           "tBodyAccMag-std()"              
[63] "tGravityAccMag-std()"            "tBodyAccJerkMag-std()"          
[65] "tBodyGyroMag-std()"              "tBodyGyroJerkMag-std()"         
[67] "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
[69] "fBodyAcc-std()-Z"                "fBodyAccJerk-std()-X"           
[71] "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
[73] "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"              
[75] "fBodyGyro-std()-Z"               "fBodyAccMag-std()"              
[77] "fBodyBodyAccJerkMag-std()"       "fBodyBodyGyroMag-std()"         
[79] "fBodyBodyGyroJerkMag-std()"    
there's also the ID that identifies each subject who did each experiments (we have a total for of 10299 experiment, 30 subjects who did multiple expriments)
Finally the activity label, "activity type" which refers to either one of these options :  (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
Transformations : 
1) The first operation we proceeded with is importing data from the data files, we did it to all the resources files (including the ones who provides features name, activity labels, subjects ID)
2) Then we proceeded to merge data, we had two seperate dataset at the beginning (one used for training another one for testing). We merged all the training data files with their correspondings data file in the testing data. The was done using the R function rbind() which take as parameter the data related to training and test,produces as result a dataframe object that we saved into a file using write.csv()

3)We moved on to the next step which is detecting the variables indices that we are interested in, since we are only looking for the mean and std measurements, we queried only the variables name which has the token "mean" or "std" from the file which has the all the variables names. We also queried their indices, we will need their indices to extract them from the whole dataset later on.

4)Then we went on renaming all the variables names appropriately according to the names written in the file features.txt.

5) Now is the time to extract only the columns that refers to a mean or std measurements, in order to do this we use the same command we did in step 3 to extract a subset of columns that is related to a mean or std measurment.

6) We add the ID column, the activity column as well, for now the activity labels are encoded using integers from 1 to 6. 

7) We replace each activity encoder by it's real meaning :

1 : WALKING
2 : WALKING_UPSTAIRS
3 : WALKING_DOWNSTAIRS
4 : SITTING
5 : STANDING
6 : LAYING

8) Next we proceeds with a few queries commands, we would like to compute the averge of all columns (execpt ID and activity) for each activity type and subject. the results are saved in the files : average_per_activity.csv/ average_per_subject_id.csv

9) Finally, we move on the inertial signals :
body accelation according to x axis
body accelation according to y axis
body accelation according to z axis
body gyroscope according to x axis
body gyroscope according to y axis
body gyroscope according to z axis
total accelation according to x axis
total accelation according to y axis
total accelation according to z axis

each feature above is measured periodically with a frequence of 50 Hz, the sample size is 128 measure, we does the same as before, computing the averge of the whole sample one of them and append it our dataset and finally save the final dataset into a csv file  "deliverable.csv", which has 10299 record, 90 columns.