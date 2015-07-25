# Getting-Cleaning-Data-Course-Project


**This course project creates R script and save it as run_analysis.R. In summary, the script does the following:**
 
1. Merged the training and test datasets to create one dataset.
2. Extracted only the measurements on the mean and standard deviation for each measurement. 
3. Used descriptive activity names to name the activities in the dataset
4. Appropriately labeled the dataset with descriptive variable names. 
5. From the dataset in step 4, created a final tidy data set with the average of each variable for each activity and each subject.

The final tidy dataset is shown in the file *tidydata.txt*. All the works done in this project is share via github (https://github.com/irzan3/Getting-Cleaning-Data-Course-Project)



## **Here is the step-by-step process of getting and cleaning the dataset**

1. Checked the existence of "data" folder and create one if it doesn't exist.

2. Downloaded the zip file that contain the dataset for this project into the "data" folder using download.file() function. 
+ The url to download the zip file is located at  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

3. Unzipped the downloaded zip file using unzip() function

4. Unzipped files are in the folder "UCI HAR Dataset" so reference file path was created for later reference using file.path() function

5. Read Activity files for both test and train datasets by using write.table() functon

6. Read Subject files for both test and train dataset by using write.table() functon 
7. Read Features files for both test and train dataset by using write.table() functon

8. Merged the training and test datasets to create one dataset for each activity, subject and features datasets by using rbind() function

9. Since all three combined datasets don't have proper variables names so we need to set the names to all their variables. Activity and Subject datasets variables names were set directly. whereas, Features dataset variables names can be extracted from "features.txt" using read.table() function.

10. Now we need to combine all three datasets created above to only one dataset. This dataset will be used in later stage for analysis purposes. The datasets were combined using cbind() function.

11. As required by this project, we need to only extract the measurements on the mean and standard deviation for each measurement. Hence, we need to subset name of Features by measurements on the mean and standard deviation i.e taken names of Features with "mean()" or "std()". In other words, the tidy dataset requested by this project will be a subset dataset that contain variable "subject", "activity" and all Features variables that contain "mean()" and "std()".

12. The project also required us to use descriptive activity names to name the activities in the data set. The activity names from the file "activity_labels.txt" were read by using read.table() function to see whether the activity labels names are properly described.

13. It was found that the activity labels names were not properly described which may lead to confusion. It is suggestted that the activity labels names to be modified as following,

+ prefix "t" is replaced by "time"
+ "Acc" is replaced by "Accelerometer"
+ "Gyro" is replaced by "Gyroscope"
+ prefix "f" is replaced by "frequency"
+ "Mag" is replaced by "Magnitude"

14. Now, the final tidy dataset was created with the average of each variable for each activity and each subject based on the combined dataset created above. The final tidy dataset was then written in text file using write.table() function and was name as *tidydata.txt*.

15. All the works done in this project (dataset, script, readme and code book files) are shared via github (https://github.com/irzan3/Getting-Cleaning-Data-Course-Project)

