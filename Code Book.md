---
title: "CODE BOOK FOR THE CLEANING DATA WEEK 4 PROJECT"
output: html_document
---
# CODE BOOK FOR THE CLEANING DATA WEEK 4 PROJECT
## This document explains about  what are the steps followed to tidy the data and processing done to find the final result set as per the requirement
### following are the steps performed

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


 subjectid                            
 activityname                        
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


