# Human Activity Recognition Using Smartphones Data Set cleaning

This repos presents preprocessing step that were applied on the dataset : Human Activity Recognition Using Smartphones Data Set  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

the "Raw data folder" is what was downloaded from the ML repo (the brute data folder),the folder "Raw data folder/dataset" was newly created by me,it contains the merged data, we initially had two subfolders inside Raw data folder (train and test), the subfolder "dataset" was added to refer to the entire data after applying merging operations, this dataset folder has the same structure as train and test, it contains one file that refer to the features, another one that refers to the labels, another one that refers to the subjects, finally a folder named "inertial signals" that is structured exactly like inertial signals in train or test folders

The file run_analysis shows the different R commands that were conducted on the raw data from machine learning repo (link above) to come up with the output dataset "output/average_per_activity_subject.txt" (10299 lines,90 columns), this dataset presents the average of all variables group by the activity label, and subject ID (more information in the codebook).

Operations : 
1) The first operation we proceeded with is importing data from the data files, we did it to all the resources files (including the ones who provides features name, activity labels, subjects ID)
2) Then we proceeded to merge data, we had two seperate datasets at the beginning (one used for training another one for testing). We merged all the training data files with their correspondings data files in the testing folder. That was done using the R function rbind() which take as parameter the data related to training and test,produces as result a dataframe object that we saved into a file using write.csv()

3)We moved on to the next step which is detecting the variables indices that we are interested in, since we are only looking for the mean and std measurements, we queried only the variables name which has the token "mean" or "std" from the file which has the all the variables names using regular expressions. We also queried their indices, we will need their indices to extract them from the whole dataset later on.

4)Then we went on renaming all the variables names appropriately according to the names written in the file features.txt.

5) Now is the time to extract only the columns that refers to a mean or std measurements, in order to do this we make use of the command we did in step 3 to extract a subset of columns that is related to a mean or std measurment.

6) We add the ID column, the activity column as well, for now the activity labels are encoded using integers from 1 to 6. 

7) We replace each activity type encoder by it's real meaning :

1 : WALKING
2 : WALKING_UPSTAIRS
3 : WALKING_DOWNSTAIRS
4 : SITTING
5 : STANDING
6 : LAYING



8)Finally, we move on the inertial signals :
body accelation according to x axis
body accelation according to y axis
body accelation according to z axis
body gyroscope according to x axis
body gyroscope according to y axis
body gyroscope according to z axis
total accelation according to x axis
total accelation according to y axis
total accelation according to z axis

each feature above is measured periodically with a frequence of 50 Hz, the sample size is 128 measure, we does the same as before, computing the averge of the whole sample one of them and append it our dataset which has currently 10299 record, 90 columns.

9) We will reorder the column, so that the subject ID and activity type appears first followed by the measurements.

10) We proceed with the final step which is calculating the average of each column group by subjects and activity type seperately, after doing so we merge the two datasets vertically and save the result in the file "average_per_activity_subject.txt".