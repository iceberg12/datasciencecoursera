## Code Book

This code book explains the data columns presented in the "result.txt" file. 

1 Subject
  The ID of the subjects being experiments. 
  There is total 30 subjects here, so the ID ranges from 1 to 30

2 Activity
  The activity that a subject is doing during the time data is recorded.
  There are 6 activities:
    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING

3-68 Average measurement-stat(-axis)
  where 'measurement' is a feature from the 'features_info.txt' file (e.g. tBodyAcc, tBodyAccMag); 'stat' is either 'mean' or 'std'; 'axis' (optional) is among 'X', 'Y' or 'Z'.
  Each of these new features are calculated by taking the average of each mean/std measurement per activity per subject. There are   66 mean/std measurements so there are 66 such 'average' features.
  
Note that there are 180 combinations of (Subject ID, activity) because of 30 subjects and 6 activities.
  
