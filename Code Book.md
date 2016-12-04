---
title: "CODE BOOK FOR THE CLEANING DATA WEEK 4 PROJECT"
output: html_document
---
# CODE BOOK FOR THE CLEANING DATA WEEK 4 PROJECT
## A CodeBook that describes:

* The data,
* The variables, and
* Transformations performed to clean up the data

## The Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## The variable
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### the resultset variables are
 subjectid            -- the number to identify each volunteer                         
 activityname         -- The activity name they performed                 
 Avg_tBodyAccMeanX                
 Avg_tBodyAccMeanY               
 Avg_tBodyAccMeanZ                
 Avg_tBodyAccStdX                
 Avg_tBodyAccStdY                 
 Avg_tBodyAccStdZ                
 Avg_tGravityAccMeanX            
 Avg_tGravityAccMeanY            
 Avg_tGravityAccMeanZ            
 Avg_tGravityAccStdX           
 Avg_tGravityAccStdY             
 Avg_tGravityAccStdZ             
 Avg_tBodyAccJerkMeanX           
 Avg_tBodyAccJerkMeanY           
 Avg_tBodyAccJerkMeanZ           
 Avg_tBodyAccJerkStdX            
 Avg_tBodyAccJerkStdY             
 Avg_tBodyAccJerkStdZ            
 Avg_tBodyGyroMeanX              
 Avg_tBodyGyroMeanY              
 Avg_tBodyGyroMeanZ              
 Avg_tBodyGyroStdX               
 Avg_tBodyGyroStdY               
 Avg_tBodyGyroStdZ               
 Avg_tBodyGyroJerkMeanX          
 Avg_tBodyGyroJerkMeanY          
 Avg_tBodyGyroJerkMeanZ          
 Avg_tBodyGyroJerkStdX           
 Avg_tBodyGyroJerkStdY           
 Avg_tBodyGyroJerkStdZ           
 Avg_tBodyAccMagMean            
 Avg_tBodyAccMagStd              
 Avg_tGravityAccMagMean          
 Avg_tGravityAccMagStd           
 Avg_tBodyAccJerkMagMean         
 Avg_tBodyAccJerkMagStd          
 Avg_tBodyGyroMagMean             
 Avg_tBodyGyroMagStd             
 Avg_tBodyGyroJerkMagMean        
 Avg_tBodyGyroJerkMagStd         
 Avg_fBodyAccMeanX              
 Avg_fBodyAccMeanY               
 Avg_fBodyAccMeanZ               
 Avg_fBodyAccStdX                
 Avg_fBodyAccStdY                
 Avg_fBodyAccStdZ                
 Avg_fBodyAccMeanFreqX           
 Avg_fBodyAccMeanFreqY           
 Avg_fBodyAccMeanFreqZ           
 Avg_fBodyAccJerkMeanX           
 Avg_fBodyAccJerkMeanY           
 Avg_fBodyAccJerkMeanZ           
 Avg_fBodyAccJerkStdX             
 Avg_fBodyAccJerkStdY            
 Avg_fBodyAccJerkStdZ            
 Avg_fBodyAccJerkMeanFreqX       
 Avg_fBodyAccJerkMeanFreqY       
 Avg_fBodyAccJerkMeanFreqZ       
 Avg_fBodyGyroMeanX              
 Avg_fBodyGyroMeanY              
 Avg_fBodyGyroMeanZ             
 Avg_fBodyGyroStdX               
 Avg_fBodyGyroStdY                
 Avg_fBodyGyroStdZ               
 Avg_fBodyGyroMeanFreqX          
 Avg_fBodyGyroMeanFreqY          
 Avg_fBodyGyroMeanFreqZ          
 Avg_fBodyAccMagMean             
 Avg_fBodyAccMagStd              
 Avg_fBodyAccMagMeanFreq         
 Avg_fBodyBodyAccJerkMagMean    
 Avg_fBodyBodyAccJerkMagStd      
 Avg_fBodyBodyAccJerkMagMeanFreq 
 Avg_fBodyBodyGyroMagMean        
 Avg_fBodyBodyGyroMagStd         
 Avg_fBodyBodyGyroMagMeanFreq    
 Avg_fBodyBodyGyroJerkMagMean     
 Avg_fBodyBodyGyroJerkMagStd     
 Avg_fBodyBodyGyroJerkMagMeanFreq

## Transformation performed to clean the data 

* The steps followed to tidy the data and processing done to find the final result set as per the requirement

* Set the working directory and download the zipfile as mentioned in the course project https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project
* Check if the folder already exists, if not download the zip file and unzip it
* Change the working directory to the unzipped dataset folder
* Download the activity labels, features text file
* Read all the test data and train data
* Tidy the variable names by removing all the special characters
* Add the activity name for easy readability
* Once tidied, filter the data set with only required column i.e Mean and Std columns as per the requirement
* Run the average on Mean and STD columns after grouping by Subject and Activity Name
  ddply(tidydata_subset, .(subjectid,activityname), colwise(mean, average_columns))
* Rename the columns accordingly so they read to the user as Average value instead of measured value
* The final result is written into a cvs file as UCIHAR_AverageMeanStd_Resultset.csv


 