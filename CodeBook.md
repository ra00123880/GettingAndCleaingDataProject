#Tidy data set column detail
```R
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been 
randomly partitioned into two sets, where 70% of the volunteers was selected for generating the 
training data and 30% the test data. 
　
For each record it is provided below shows the mean grouped by Persion ID and ActivityMode
　
```
|" Column Name                        "|" Data Type " |"Values" |

|" PersonId                            "|" int " |" 1 1 2 3 4 5 6 7 8 8 ..." |

|" ActivityMode                        "|" Factor " |" w/ 6 levels "LAYING","SITTING",.."|

|" tBodyAcc-mean()-X                   "|" num " |" 0.272 0.265 0.273 0.273 0.274 ..." |

|" tBodyAcc-mean()-Y                   "|" num " |" -0.0153 -0.0186 -0.0191 -0.0179 -0.0148 ..." |

|" tBodyAcc-mean()-Z                   "|" num " |" -0.095 -0.109 -0.116 -0.106 -0.108 ..." |

|" tBodyAcc-std()-X                    "|" num " |" -0.104 -0.585 -0.606 -0.623 -0.605 ..." |

|" tBodyAcc-std()-Y                    "|" num " |" -0.0102 -0.3991 -0.429 -0.48 -0.5099 ..." |

|" tBodyAcc-std()-Z                    "|" num " |" -0.117 -0.537 -0.589 -0.654 -0.709 ..." |

|" tGravityAcc-mean()-X                "|" num " |" 0.906 0.731 0.661 0.708 0.707 ..." |

|" tGravityAcc-mean()-Y                "|" num " |" -0.33 -0.0608 -0.1472 -0.0261 0.1126 ..." |

|" tGravityAcc-mean()-Z                "|" num " |" -0.0941 0.087 0.1349 0.0481 0.1641 ..." |

|" tGravityAcc-std()-X                 "|" num " |" -0.957 -0.96 -0.963 -0.966 -0.963 ..." |

|" tGravityAcc-std()-Y                 "|" num " |" -0.945 -0.952 -0.96 -0.945 -0.941 ..." |

|" tGravityAcc-std()-Z                 "|" num " |" -0.907 -0.928 -0.945 -0.927 -0.941 ..." |

|" tBodyAccJerk-mean()-X               "|" num " |" 0.0629 0.0783 0.0785 0.0702 0.0789 ..." |

|" tBodyAccJerk-mean()-Y               "|" num " |" 0.02431 0.01591 0.00709 0.01447 0.00351 ..." |

|" tBodyAccJerk-mean()-Z               "|" num " |" -0.016182 -0.008487 0.000756 -0.000527 -0.007374 ..." |

|" tBodyAccJerk-std()-X                "|" num " |" -0.156 -0.557 -0.558 -0.635 -0.632 ..." |

|" tBodyAccJerk-std()-Y                "|" num " |" -0.2 -0.494 -0.492 -0.557 -0.584 ..." |

|" tBodyAccJerk-std()-Z                "|" num " |" -0.476 -0.738 -0.742 -0.796 -0.843 ..." |

|" tBodyGyro-mean()-X                  "|" num " |" 0.00794 -0.02341 -0.0517 -0.02485 -0.02894 ..." |

|" tBodyGyro-mean()-Y                  "|" num " |" -0.1242 -0.0849 -0.0568 -0.0744 -0.0787 ..." |

|" tBodyGyro-mean()-Z                  "|" num " |" 0.075 0.0873 0.0873 0.0867 0.0957 ..." |

|" tBodyGyro-std()-X                   "|" num " |" -0.506 -0.702 -0.711 -0.699 -0.701 ..." |

|" tBodyGyro-std()-Y                   "|" num " |" -0.0722 -0.4842 -0.7229 -0.763 -0.7982 ..." |

|" tBodyGyro-std()-Z                   "|" num " |" -0.264 -0.627 -0.635 -0.709 -0.726 ..." |

|" tBodyGyroJerk-mean()-X              "|" num " |" -0.1211 -0.095 -0.0876 -0.0992 -0.1079 ..." |

|" tBodyGyroJerk-mean()-Y              "|" num " |" -0.0704 -0.0392 -0.0434 -0.0402 -0.04 ..." |

|" tBodyGyroJerk-mean()-Z              "|" num " |" -0.0169 -0.0498 -0.0558 -0.0521 -0.0578 ..." |

|" tBodyGyroJerk-std()-X               "|" num " |" -0.528 -0.647 -0.672 -0.689 -0.724 ..." |

|" tBodyGyroJerk-std()-Y               "|" num " |" -0.389 -0.656 -0.784 -0.843 -0.903 ..." |

|" tBodyGyroJerk-std()-Z               "|" num " |" -0.383 -0.689 -0.675 -0.743 -0.748 ..." |

|" tBodyAccMag-mean()                  "|" num " |" -0.0141 -0.4922 -0.5353 -0.5631 -0.5616 ..." |

|" tBodyAccMag-std()                   "|" num " |" -0.102 -0.532 -0.553 -0.591 -0.607 ..." |

|" tGravityAccMag-mean()               "|" num " |" -0.0141 -0.4922 -0.5353 -0.5631 -0.5616 ..." |

|" tGravityAccMag-std()                "|" num " |" -0.102 -0.532 -0.553 -0.591 -0.607 ..." |

|" tBodyAccJerkMag-mean()              "|" num " |" -0.22 -0.574 -0.588 -0.65 -0.656 ..." |

|" tBodyAccJerkMag-std()               "|" num " |" -0.173 -0.546 -0.512 -0.608 -0.647 ..." |

|" tBodyGyroMag-mean()                 "|" num " |" -0.0917 -0.5091 -0.6148 -0.6432 -0.6563 ..." |

|" tBodyGyroMag-std()                  "|" num " |" -0.205 -0.526 -0.681 -0.674 -0.707 ..." |

|" tBodyGyroJerkMag-mean()             "|" num " |" -0.406 -0.66 -0.747 -0.784 -0.819 ..." |

|" tBodyGyroJerkMag-std()              "|" num " |" -0.462 -0.669 -0.74 -0.804 -0.844 ..." |

|" fBodyAcc-mean()-X                   "|" num " |" -0.114 -0.569 -0.574 -0.626 -0.629 ..." |

|" fBodyAcc-mean()-Y                   "|" num " |" -0.0743 -0.4356 -0.4326 -0.5018 -0.5258 ..." |

|" fBodyAcc-mean()-Z                   "|" num " |" -0.296 -0.623 -0.63 -0.7 -0.755 ..." |

|" fBodyAcc-std()-X                    "|" num " |" -0.104 -0.592 -0.62 -0.624 -0.598 ..." |

|" fBodyAcc-std()-Y                    "|" num " |" -0.0456 -0.4204 -0.4647 -0.5028 -0.5347 ..." |

|" fBodyAcc-std()-Z                    "|" num " |" -0.112 -0.532 -0.601 -0.657 -0.709 ..." |

|" fBodyAcc-meanFreq()-X               "|" num " |" -0.346 -0.166 -0.107 -0.193 -0.185 ..." |

|" fBodyAcc-meanFreq()-Y               "|" num " |" 0.0023 0.0625 0.1057 0.0389 0.0848 ..." |

|" fBodyAcc-meanFreq()-Z               "|" num " |" -0.0355 0.06661 0.08721 0.00447 -0.01641 ..." |

|" fBodyAccJerk-mean()-X               "|" num " |" -0.185 -0.579 -0.562 -0.646 -0.652 ..." |

|" fBodyAccJerk-mean()-Y               "|" num " |" -0.228 -0.532 -0.509 -0.583 -0.602 ..." |

|" fBodyAccJerk-mean()-Z               "|" num " |" -0.434 -0.718 -0.716 -0.78 -0.825 ..." |

|" fBodyAccJerk-std()-X                "|" num " |" -0.202 -0.574 -0.595 -0.658 -0.645 ..." |

|" fBodyAccJerk-std()-Y                "|" num " |" -0.225 -0.487 -0.509 -0.56 -0.594 ..." |

|" fBodyAccJerk-std()-Z                "|" num " |" -0.516 -0.757 -0.767 -0.811 -0.861 ..." |

|" fBodyAccJerk-meanFreq()-X           "|" num " |" -0.306333 -0.026196 0.0868 -0.047694 -0.000544 ..." |

|" fBodyAccJerk-meanFreq()-Y           "|" num " |" -0.379 -0.201 -0.14 -0.237 -0.181 ..." |

|" fBodyAccJerk-meanFreq()-Z           "|" num " |" -0.2062 -0.0868 -0.0943 -0.1937 -0.1106 ..." |

|" fBodyGyro-mean()-X                  "|" num " |" -0.424 -0.641 -0.639 -0.642 -0.642 ..." |

|" fBodyGyro-mean()-Y                  "|" num " |" -0.186 -0.533 -0.722 -0.775 -0.832 ..." |

|" fBodyGyro-mean()-Z                  "|" num " |" -0.179 -0.586 -0.602 -0.671 -0.689 ..." |

|" fBodyGyro-std()-X                   "|" num " |" -0.536 -0.723 -0.735 -0.719 -0.722 ..." |

|" fBodyGyro-std()-Y                   "|" num " |" -0.0339 -0.4646 -0.7272 -0.7585 -0.7829 ..." |

|" fBodyGyro-std()-Z                   "|" num " |" -0.363 -0.676 -0.683 -0.751 -0.767 ..." |

|" fBodyGyro-meanFreq()-X              "|" num " |" -0.16739 -0.02015 -0.00577 -0.10257 -0.11852 ..." |

|" fBodyGyro-meanFreq()-Y              "|" num " |" -0.1387 -0.0859 -0.0702 -0.1677 -0.3753 ..." |

|" fBodyGyro-meanFreq()-Z              "|" num " |" -0.069 -0.0135 0.0514 -0.0322 0.0242 ..." |

|" fBodyAccMag-mean()                  "|" num " |" -0.0676 -0.5145 -0.5146 -0.5791 -0.6021 ..." |

|" fBodyAccMag-std()                   "|" num " |" -0.264 -0.618 -0.647 -0.663 -0.673 ..." |

|" fBodyAccMag-meanFreq()              "|" num " |" 0.0623 0.1491 0.1922 0.0771 0.0964 ..." |

|" fBodyBodyAccJerkMag-mean()          "|" num " |" -0.12 -0.532 -0.51 -0.605 -0.635 ..." |

|" fBodyBodyAccJerkMag-std()           "|" num " |" -0.254 -0.567 -0.519 -0.616 -0.667 ..." |

|" fBodyBodyAccJerkMag-meanFreq()      "|" num " |" 0.0667 0.2118 0.1931 0.1123 0.1605 ..." |

|" fBodyBodyGyroMag-mean()             "|" num " |" -0.248 -0.56 -0.7 -0.717 -0.746 ..." |

|" fBodyBodyGyroMag-std()              "|" num " |" -0.325 -0.588 -0.725 -0.704 -0.733 ..." |

|" fBodyBodyGyroMag-meanFreq()         "|" num " |" 0.1572 0.0568 0.0471 -0.0846 -0.1293 ..." |

|" fBodyBodyGyroJerkMag-mean()         "|" num " |" -0.436 -0.664 -0.752 -0.81 -0.839 ..." |

|" fBodyBodyGyroJerkMag-std()          "|" num " |" -0.538 -0.699 -0.744 -0.81 -0.863 ..." |

|" fBodyBodyGyroJerkMag-meanFreq()     "|" num " |" 0.215 0.197 0.125 0.06 0.159 ..." |

|" angle(tBodyAccMean,gravity)         "|" num " |" 0.09803 0.0323 0.00987 0.01409 0.00803 ..." |

|" angle(tBodyAccJerkMean),gravityMean)"|" num " |" 0.03151 0.00704 0.01404 0.01345 -0.01114 ..." |

|" angle(tBodyGyroMean,gravityMean)    "|" num " |" -0.0283 -0.0121 0.0746 0.0359 0.0271 ..." |

|" angle(tBodyGyroJerkMean,gravityMean)"|" num " |" 0.02472 -0.00394 -0.03729 -0.01921 0.01178 ..." |

|" angle(X,gravityMean)                "|" num " |" -0.674 -0.524 -0.434 -0.503 -0.577 ..." |

|" angle(Y,gravityMean)                "|" num " |" 0.3118 0.1062 0.1723 0.0756 -0.0324 ..." |

|" angle(Z,gravityMean)                "|" num " |" 0.0872 -0.0502 -0.0789 -0.0175 -0.0955 ..." |
