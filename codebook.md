#Codebook

The data contained in the tidy.csv and tidymeans.csv files are derived from the [Human Activity Recognition Using Smartphones Dataset, Version 1.0](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones):

>Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

##Files in this GitHub repo
* **tidy.csv**: A comma-separated values data file that contains the merged training and test data.
* **tidymeans.csv**: A comma-separated values data file that contains the merged training and test data, averaged within each combination of subject and activity.
* **run_analysis.R**: An R script that downloads the original IWAAL data, unzips the directory, loads the data, and compiles the tidy.csv and tidymeans.csv data files.
* **codebook.md**: A description of the variables in tidy.csv and tidymeans.csv
* **readme.md**: A description of the files in this GitHub directory

##tidy.csv
tidy.csv contains observations of each of 30 subjects (from the training and test data) and each of 6 activities.  There are multiple observations per subject and activity because independent measurements of each activity are drawn "in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window)" in the IWAAL data.

### Size 
* 8.34mb
* N = 10,299
* 68 variables

### Description of variables
1. **subject**: subject ID
2. **activity**: activity ID, where the activities are Walking, Walking upstairs, Walking downstairs, Sitting, Standing, and Laying
3. **tBodyAcc-mean()-X**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, X dimension, mean
4. **tBodyAcc-mean()-Y**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, Y dimension, mean
5. **tBodyAcc-mean()-Z**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, Z dimension, mean
6. **tBodyAcc-std()-X**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, X dimension, standard deviation
7. **tBodyAcc-std()-Y**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, Y dimension, standard deviation
8. **tBodyAcc-std()-Z**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, Z dimension, standard deviation
9. **tGravityAcc-mean()-X**: Triaxial acceleration from the accelerometer (total acceleration), gravitational component, X dimension, mean
10. **tGravityAcc-mean()-Y**: Triaxial acceleration from the accelerometer (total acceleration), gravitational component, Y dimension, mean
11. **tGravityAcc-mean()-Z**: Triaxial acceleration from the accelerometer (total acceleration), gravitational component, Z dimension, mean
12. **tGravityAcc-std()-X**: Triaxial acceleration from the accelerometer (total acceleration), gravitational component, X dimension, standard deviation
13. **tGravityAcc-std()-Y**: Triaxial acceleration from the accelerometer (total acceleration), gravitational component, Y dimension, standard deviation
14. **tGravityAcc-std()-Z**: Triaxial acceleration from the accelerometer (total acceleration), gravitational component, Z dimension, standard deviation
15. **tBodyAccJerk-mean()-X**: Triaxial jerk from the accelerometer (total acceleration), body motion component, X dimension, mean
16. **tBodyAccJerk-mean()-Y**: Triaxial jerk from the accelerometer (total acceleration), body motion component, Y dimension, mean
17. **tBodyAccJerk-mean()-Z**: Triaxial jerk from the accelerometer (total acceleration), body motion component, Z dimension, mean
18. **tBodyAccJerk-std()-X**: Triaxial jerk from the accelerometer (total acceleration), body motion component, X dimension, standard deviation
19. **tBodyAccJerk-std()-Y**: Triaxial jerk from the accelerometer (total acceleration), body motion component, Y dimension, standard deviation
20. **tBodyAccJerk-std()-Z**: Triaxial jerk from the accelerometer (total acceleration), body motion component, Z dimension, standard deviation
21. **tBodyGyro-mean()-X**: Triaxial angular velocity from the gyroscope, X dimension, mean
22. **tBodyGyro-mean()-Y**: Triaxial angular velocity from the gyroscope, Y dimension, mean
23. **tBodyGyro-mean()-Z**: Triaxial angular velocity from the gyroscope, Z dimension, mean
24. **tBodyGyro-std()-X**: Triaxial angular velocity from the gyroscope, X dimension, standard deviation
25. **tBodyGyro-std()-Y**: Triaxial angular velocity from the gyroscope, Y dimension, standard deviation
26. **tBodyGyro-std()-Z**: Triaxial angular velocity from the gyroscope, Z dimension, standard deviation
27. **tBodyGyroJerk-mean()-X**: Triaxial jerk from the gyroscope, X dimension, mean
28. **tBodyGyroJerk-mean()-Y**: Triaxial jerk from the gyroscope, Y dimension, mean
29. **tBodyGyroJerk-mean()-Z**: Triaxial jerk from the gyroscope, Z dimension, mean
30. **tBodyGyroJerk-std()-X**: Triaxial jerk from the gyroscope, X dimension, standard deviation
31. **tBodyGyroJerk-std()-Y**: Triaxial jerk from the gyroscope, Y dimension, standard deviation
32. **tBodyGyroJerk-std()-Z**: Triaxial jerk from the gyroscope, Z dimension, standard deviation
33. **tBodyAccMag-mean()**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, magnitude, mean
34. **tBodyAccMag-std()**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, magnitude, standard deviation
35. **tGravityAccMag-mean()**: Triaxial acceleration from the accelerometer (total acceleration), gravitational component, magnitude, mean
36. **tGravityAccMag-std()**: riaxial acceleration from the accelerometer (total acceleration), gravitational component, magnitude, standard deviation
37. **tBodyAccJerkMag-mean()**: Triaxial jerk from the accelerometer (total acceleration), body motion component, magnitude, mean
38. **tBodyAccJerkMag-std()**: Triaxial jerk from the accelerometer (total acceleration), body motion component, magnitude, standard deviation
39. **tBodyGyroMag-mean()**: Triaxial angular velocity from the gyroscope, magnitude, mean
40. **tBodyGyroMag-std()**: Triaxial angular velocity from the gyroscope, magnitude, standard deviation
41. **tBodyGyroJerkMag-mean()**: Triaxial jerk from the gyroscope, magnitude, mean
42. **tBodyGyroJerkMag-std()**: Triaxial jerk from the gyroscope, magnitude, standard deviation
43. **fBodyAcc-mean()-X**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, X dimension, mean, Fast Fourier Transform (FFT)
44. **fBodyAcc-mean()-Y**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, Y dimension, mean, Fast Fourier Transform (FFT)
45. **fBodyAcc-mean()-Z**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, Z dimension, mean, Fast Fourier Transform (FFT)
46. **fBodyAcc-std()-X**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, X dimension, standard deviation, Fast Fourier Transform (FFT)
47. **fBodyAcc-std()-Y**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, Y dimension, standard deviation, Fast Fourier Transform (FFT)
48. **fBodyAcc-std()-Z**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, Z dimension, standard deviation, Fast Fourier Transform (FFT)
49. **fBodyAccJerk-mean()-X**: Triaxial jerk from the accelerometer (total acceleration), body motion component, X dimension, mean, Fast Fourier Transform (FFT)
50. **fBodyAccJerk-mean()-Y**: Triaxial jerk from the accelerometer (total acceleration), body motion component, Y dimension, mean, Fast Fourier Transform (FFT)
51. **fBodyAccJerk-mean()-Z**: Triaxial jerk from the accelerometer (total acceleration), body motion component, Z dimension, mean, Fast Fourier Transform (FFT)
52. **fBodyAccJerk-std()-X**: Triaxial jerk from the accelerometer (total acceleration), body motion component, X dimension, standard deviation, Fast Fourier Transform (FFT)
53. **fBodyAccJerk-std()-Y**: Triaxial jerk from the accelerometer (total acceleration), body motion component, Y dimension, standard deviation, Fast Fourier Transform (FFT)
54. **fBodyAccJerk-std()-Z**: Triaxial jerk from the accelerometer (total acceleration), body motion component, Z dimension, standard deviation, Fast Fourier Transform (FFT)
55. **fBodyGyro-mean()-X**: Triaxial angular velocity from the gyroscope, X dimension, mean, Fast Fourier Transform (FFT)
56. **fBodyGyro-mean()-Y**: Triaxial angular velocity from the gyroscope, Y dimension, mean, Fast Fourier Transform (FFT)
57. **fBodyGyro-mean()-Z**: Triaxial angular velocity from the gyroscope, Z dimension, mean, Fast Fourier Transform (FFT)
58. **fBodyGyro-std()-X**: Triaxial angular velocity from the gyroscope, X dimension, standard deviation, Fast Fourier Transform (FFT)
59. **fBodyGyro-std()-Y**: Triaxial angular velocity from the gyroscope, Y dimension, standard deviation, Fast Fourier Transform (FFT)
60. **fBodyGyro-std()-Z**: Triaxial angular velocity from the gyroscope, Z dimension, standard deviation, Fast Fourier Transform (FFT)
61. **fBodyAccMag-mean()**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, magnitude, mean, Fast Fourier Transform (FFT)
62. **fBodyAccMag-std()**: Triaxial acceleration from the accelerometer (total acceleration), body motion component, magnitude, standard deviation, Fast Fourier Transform (FFT)
63. **fBodyBodyAccJerkMag-mean()**: Triaxial jerk from the accelerometer (total acceleration), body motion component, magnitude, mean, Fast Fourier Transform (FFT)
64. **fBodyBodyAccJerkMag-std()**: Triaxial jerk from the accelerometer (total acceleration), body motion component, magnitude, standard deviation, Fast Fourier Transform (FFT)
65. **fBodyBodyGyroMag-mean()**: Triaxial angular velocity from the gyroscope, magnitude, mean, Fast Fourier Transform (FFT)
66. **fBodyBodyGyroMag-std()**: Triaxial angular velocity from the gyroscope, magnitude, standard deviation, Fast Fourier Transform (FFT)
67. **fBodyBodyGyroJerkMag-mean()**: Triaxial jerk from the gyroscope, magnitude, mean, Fast Fourier Transform (FFT)
68. **fBodyBodyGyroJerkMag-std()**: Triaxial jerk from the gyroscope, magnitude, standard deviation, Fast Fourier Transform (FFT)

## tidymeans.csv
tidymeans.csv contains all of the variables described above for tidy.csv, only every variable (other than subject and activity) is averaged within subject and activity.

### Size 
* 225kb
* N = 180
* 68 variables







