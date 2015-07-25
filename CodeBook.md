---
title: "Getting and Cleaning Data Course Project Code Book"
author: "Nazri Othman"
date: "July 25, 2015"
output: html_document
---

## This code book explains the data fields in tidydata.txt. 

This data frame consist of 180 observations of 68 variables. The variables names and their data type are as following,

1.	subject                                       : int  
2.	activity                                      : int  
3.	timeBodyAccelerometer-mean()-X                : num  
4.	timeBodyAccelerometer-mean()-Y                : num  
5.	timeBodyAccelerometer-mean()-Z                : num  
6.	timeBodyAccelerometer-std()-X                 : num  
7.	timeBodyAccelerometer-std()-Y                 : num  
8.	timeBodyAccelerometer-std()-Z                 : num  
9.	timeGravityAccelerometer-mean()-X             : num  
10.	timeGravityAccelerometer-mean()-Y             : num  
11.	timeGravityAccelerometer-mean()-Z             : num  
12.	timeGravityAccelerometer-std()-X              : num  
13.	timeGravityAccelerometer-std()-Y              : num  
14.	timeGravityAccelerometer-std()-Z              : num  
15.	timeBodyAccelerometerJerk-mean()-X            : num  
16.	timeBodyAccelerometerJerk-mean()-Y            : num  
17.	timeBodyAccelerometerJerk-mean()-Z            : num  
18.	timeBodyAccelerometerJerk-std()-X             : num  
19.	timeBodyAccelerometerJerk-std()-Y             : num  
20.	timeBodyAccelerometerJerk-std()-Z             : num  
21.	timeBodyGyroscope-mean()-X                    : num  
22.	timeBodyGyroscope-mean()-Y                    : num  
23.	timeBodyGyroscope-mean()-Z                    : num  
24.	timeBodyGyroscope-std()-X                     : num  
25.	timeBodyGyroscope-std()-Y                     : num  
26.	timeBodyGyroscope-std()-Z                     : num  
27.	timeBodyGyroscopeJerk-mean()-X                : num  
28.	timeBodyGyroscopeJerk-mean()-Y                : num  
29.	timeBodyGyroscopeJerk-mean()-Z                : num  
30.	timeBodyGyroscopeJerk-std()-X                 : num  
31.	timeBodyGyroscopeJerk-std()-Y                 : num  
32.	timeBodyGyroscopeJerk-std()-Z                 : num  
33.	timeBodyAccelerometerMagnitude-mean()         : num  
34.	timeBodyAccelerometerMagnitude-std()          : num  
35.	timeGravityAccelerometerMagnitude-mean()      : num  
36.	timeGravityAccelerometerMagnitude-std()       : num  
37.	timeBodyAccelerometerJerkMagnitude-mean()     : num  
38.	timeBodyAccelerometerJerkMagnitude-std()      : num  
39.	timeBodyGyroscopeMagnitude-mean()             : num  
40.	timeBodyGyroscopeMagnitude-std()              : num  
41.	timeBodyGyroscopeJerkMagnitude-mean()         : num  
42.	timeBodyGyroscopeJerkMagnitude-std()          : num  
43.	frequencyBodyAccelerometer-mean()-X           : num  
44.	frequencyBodyAccelerometer-mean()-Y           : num  
45.	frequencyBodyAccelerometer-mean()-Z           : num  
46.	frequencyBodyAccelerometer-std()-X            : num  
47.	frequencyBodyAccelerometer-std()-Y            : num  
48.	frequencyBodyAccelerometer-std()-Z            : num  
49.	frequencyBodyAccelerometerJerk-mean()-X       : num  
50.	frequencyBodyAccelerometerJerk-mean()-Y       : num  
51.	frequencyBodyAccelerometerJerk-mean()-Z       : num  
52.	frequencyBodyAccelerometerJerk-std()-X        : num  
53.	frequencyBodyAccelerometerJerk-std()-Y        : num  
54.	frequencyBodyAccelerometerJerk-std()-Z        : num  
55.	frequencyBodyGyroscope-mean()-X               : num  
56.	frequencyBodyGyroscope-mean()-Y               : num  
57.	frequencyBodyGyroscope-mean()-Z               : num  
58.	frequencyBodyGyroscope-std()-X                : num  
59.	frequencyBodyGyroscope-std()-Y                : num  
60.	frequencyBodyGyroscope-std()-Z                : num  
61.	frequencyBodyAccelerometerMagnitude-mean()    : num  
62.	frequencyBodyAccelerometerMagnitude-std()     : num  
63.	frequencyBodyAccelerometerJerkMagnitude-mean(): num  
64.	frequencyBodyAccelerometerJerkMagnitude-std() : num  
65.	frequencyBodyGyroscopeMagnitude-mean()        : num  
66.	frequencyBodyGyroscopeMagnitude-std()         : num  
67.	frequencyBodyGyroscopeJerkMagnitude-mean()    : num  
68.	frequencyBodyGyroscopeJerkMagnitude-std()     : num  

## Here is the description of the variables

#### **Identifiers**
* **subject** - The ID of the test subject
* **activity** - The type of activity performed by the subject when the corresponding measurements were taken

#### **The activities of the subject to be measured are as following**
*	WALKING (value 1): subject was walking during the test
*	WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
*	WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
*	SITTING (value 4): subject was sitting during the test
*	STANDING (value 5): subject was standing during the test
*	LAYING (value 6): subject was laying down during the test

#### **Measurements**

The measurements selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ,  frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude.  

These signals were used to estimate variables of the feature vector for each pattern: 

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* timeBodyAccelerometer-XYZ
* timeGravityAccelerometer-XYZ
* timeBodyAccelerometerJerk-XYZ
* timeBodyGyroscope-XYZ
* timeBodyGyroscopeJerk-XYZ
* timeBodyAccelerometerMagnitude
* timeGravityAccelerometerMagnitude
* timeBodyAccelerometerJerkMagnitude
* timeBodyGyroscopeMagnitude
* timeBodyGyroscopeJerkMagnitude
* frequencyBodyAccelerometer-XYZ
* frequencyBodyAccelerometerJerk-XYZ
* frequencyBodyGyroscope-XYZ
* frequencyBodyAccelerometerMagnitude
* frequencyBodyAccelerometerJerkMagnitude
* frequencyBodyGyroscopeMagnitude
* frequencyBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* timeBodyAccelerometerMean
* timeBodyAccelerometerJerkMean
* timeBodyGyroscopeMean
* timeBodyGyroscopeJerkMean





