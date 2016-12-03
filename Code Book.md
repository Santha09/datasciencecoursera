bplist00�_WebMainResource�	
_WebResourceMIMEType_WebResourceTextEncodingName_WebResourceFrameName^WebResourceURL_WebResourceDataYtext/htmlUutf-8P_file:///index.htmlO5�<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <title></title>
  <meta name="Generator" content="Cocoa HTML Writer">
  <meta name="CocoaVersion" content="1348.17">
  <style type="text/css">
    p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Helvetica}
    p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Helvetica; min-height: 14.0px}
  </style>
</head>
<body>
<p class="p1"># CODE BOOK FOR THE CLEANING DATA WEEK 4 PROJECT</p>
<p class="p1">## This document explains about<span class="Apple-converted-space">  </span>what are the steps followed to tidy the data and processing done to find the final result set as per the requirement</p>
<p class="p1">### following are the steps performed</p>
<p class="p2"><br></p>
<p class="p1">* Set the working directory and download the zipfile as mentioned in the course project https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project</p>
<p class="p1">* Check if the folder already exists, if not download the zip file and unzip it</p>
<p class="p1">* Change the working directory to the unzipped dataset folder</p>
<p class="p1">* Download the activity labels, features text file</p>
<p class="p1">* Read all the test data and train data</p>
<p class="p1">* Tidy the variable names by removing all the special characters</p>
<p class="p1">* Add the activity name for easy readability</p>
<p class="p1">* Once tidied, filter the data set with only required column i.e Mean and Std columns as per the requirement</p>
<p class="p1">* Run the average on Mean and STD columns after grouping by Subject and Activity Name</p>
<p class="p1">* Rename the columns accordingly so they read to the user as Average value instead of measured value</p>
<p class="p1">* The final result is written into a cvs file as UCIHAR_AverageMeanStd_Resultset.csv</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space"> </span>subjectid <span class="Apple-converted-space">                           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>activityname <span class="Apple-converted-space">                       </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccMeanX <span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccMeanY<span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccMeanZ <span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccStdX <span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccStdY<span class="Apple-converted-space">                 </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccStdZ <span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tGravityAccMeanX <span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tGravityAccMeanY <span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tGravityAccMeanZ <span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tGravityAccStdX<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tGravityAccStdY<span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tGravityAccStdZ<span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccJerkMeanX<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccJerkMeanY<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccJerkMeanZ<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccJerkStdX <span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccJerkStdY<span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccJerkStdZ <span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroMeanX <span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroMeanY <span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroMeanZ <span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroStdX<span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroStdY<span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroStdZ<span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroJerkMeanX <span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroJerkMeanY <span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroJerkMeanZ <span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroJerkStdX<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroJerkStdY<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroJerkStdZ<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccMagMean <span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccMagStd <span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tGravityAccMagMean <span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tGravityAccMagStd<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccJerkMagMean<span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyAccJerkMagStd <span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroMagMean<span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroMagStd<span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroJerkMagMean <span class="Apple-converted-space">       </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_tBodyGyroJerkMagStd<span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccMeanX <span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccMeanY<span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccMeanZ<span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccStdX <span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccStdY <span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccStdZ <span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccMeanFreqX<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccMeanFreqY<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccMeanFreqZ<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccJerkMeanX<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccJerkMeanY<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccJerkMeanZ<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccJerkStdX<span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccJerkStdY <span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccJerkStdZ <span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccJerkMeanFreqX<span class="Apple-converted-space">       </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccJerkMeanFreqY<span class="Apple-converted-space">       </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccJerkMeanFreqZ<span class="Apple-converted-space">       </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyGyroMeanX <span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyGyroMeanY <span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyGyroMeanZ<span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyGyroStdX<span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyGyroStdY <span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyGyroStdZ<span class="Apple-converted-space">               </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyGyroMeanFreqX <span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyGyroMeanFreqY <span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyGyroMeanFreqZ <span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccMagMean<span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccMagStd <span class="Apple-converted-space">             </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyAccMagMeanFreq<span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyBodyAccJerkMagMean <span class="Apple-converted-space">   </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyBodyAccJerkMagStd <span class="Apple-converted-space">     </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyBodyAccJerkMagMeanFreq<span class="Apple-converted-space"> </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyBodyGyroMagMean <span class="Apple-converted-space">       </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyBodyGyroMagStd<span class="Apple-converted-space">         </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyBodyGyroMagMeanFreq <span class="Apple-converted-space">   </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyBodyGyroJerkMagMean<span class="Apple-converted-space">     </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyBodyGyroJerkMagStd<span class="Apple-converted-space">     </span></p>
<p class="p1"><span class="Apple-converted-space"> </span>Avg_fBodyBodyGyroJerkMagMeanFreq</p>
<p class="p2"><br></p>
</body>
</html>
    ( > \ s � � � � � �                           6�