# Getting-Cleaning-Data-Course-Project

**This course project creates R script and save it as run_analysis.R. What it does is as the following:**

1.	Download zip file containing test and train dataset if it does not already exist in the working directory
2.	Load the activity and feature info
3.	Loads both the training and test datasets, keeping only those columns which reflect a mean or standard deviation
4.	Loads the activity and subject data for each dataset, and merges those columns with the dataset
5.	Merges the two datasets
6.	Converts the activity and subject columns into factors
7.	Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.

The end result is shown in the file *tidydata.txt*.
