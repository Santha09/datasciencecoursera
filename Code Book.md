---
title: "CODE BOOK FOR THE CLEANING DATA WEEK 4 PROJECT"
output: html_document
---
# CODE BOOK FOR THE CLEANING DATA WEEK 4 PROJECT
## A CodeBook that describes:

*the data,
*the variables, and
*any transformations performed to clean up the data

## The Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## The variable
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

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


 