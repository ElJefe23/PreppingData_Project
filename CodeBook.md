#Data Dictionary

This dictionary describes the data variables contained in tidyData.txt.

The data in this file are derived from raw, 3-axial accelerometer and gyroscope signals obtained from 30 subjects undertaking 6 activities. These time domain signals (prefixed 'Time' in the processed data) were captured at a constant rate of 50 Hz. The raw data were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The processed acceleration signal was then separated into body and gravity acceleration signals (Body and Gravity along each axis) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

The body linear acceleration and angular velocity (gyroscopic readings) were derived in time to obtain Jerk signals along each axis. The magnitude of these three-dimensional signals were calculated using the Euclidean norm.  A Fast Fourier Transform (FastFourXform) was applied to some of these signals to produce data in the frequency domain.

The datafile tidyData.txt was created by initially selecting only the mean and standard deviations of each processed data type.  The average of each mean and standard deviation was then calculated for each data type, specific for each subject and activity.  These averages are reported in tidyData.txt.

##Variables in tidyData.txt

**SubjID** – Integer

    Values: 1, 2, 3, 4, 5, 6

    Identifier of each subject in the study

**ActID** – character

    Values: "Laying" "Sitting" "Standing" "Walking" "Walking_Downstairs" "Walking_Upstairs"

    Activity subject was undertaking when data was collected.


###The remaining variables are all numeric and normalized to the range of -1 to 1.


**1.-3. TimeBodyAccelerometer.MeanInX, TimeBodyAccelerometer.MeanInY, TimeBodyAccelerometer.MeanInZ**
 Average of the mean values of the time-domain acceleration due to body motion, decomposed into motion along the X, Y, and Z axes.


**4.-6. TimeBodyAccelerometer.StandDevInX, TimeBodyAccelerometer.StandDevInY, TimeBodyAccelerometer.StandDevInZ**
 Average of the standard devation of the time-domain acceleration due to body motion, decomposed into motion along the X, Y, and Z axes.


**7.-9. TimeGravityAccelerometer.MeanInX, TimeGravityAccelerometer.MeanInY, TimeGravityAccelerometer.MeanInZ**
 Average of the mean values of the time-domain acceleration due to gravity, decomposed into motion along the X, Y, and Z axes.


**10.-12. TimeGravityAccelerometer.StandDevInX, TimeGravityAccelerometer.StandDevInY, TimeGravityAccelerometer.StandDevInZ**
 Average of the standard deviation of the time-domain acceleration due to gravity, decomposed into motion along the X, Y, and Z axes.


**13.-15. TimeBodyAccelerometerJerk.MeanInX, TimeBodyAccelerometerJerk.MeanInY, TimeBodyAccelerometerJerk.MeanInZ**
 Average of the mean of the time derivative of the time-domain acceleration due to body motion, decomposed into motion along the X, Y, and Z axes.


**16.-18. TimeBodyAccelerometerJerk.StandDevInX, TimeBodyAccelerometerJerk.StandDevInY, TimeBodyAccelerometerJerk.StandDevInZ**
 Average of the standard deviation of the time derivative of the time-domain acceleration due to body motion, decomposed into motion along the X, Y, and Z axes.


**19.-21. TimeBodyGyroscope.MeanInX, TimeBodyGyroscope.MeanInY, TimeBodyGyroscope.MeanInZ**
 Average of the mean values of the time-domain gyroscopic readings, decomposed into motion along the X, Y, and Z axes.
   

**22.-24. TimeBodyGyroscope.StandDevInX, TimeBodyGyroscope.StandDevInY, TimeBodyGyroscope.StandDevInZ**
 Average of the standard deviation of the time-domain gyroscopic readings, decomposed into motion along the X, Y, and Z axes.


**25.-27. TimeBodyGyroscopeJerk.MeanInX, TimeBodyGyroscopeJerk.MeanInY, TimeBodyGyroscopeJerk.MeanInZ**
 Average of the mean of the time derivative of the time-domain gyroscopic readings, decomposed into motion along the X, Y, and Z axes.


**28.-30. TimeBodyGyroscopeJerk.StandDevInX, TimeBodyGyroscopeJerk.StandDevInY, TimeBodyGyroscopeJerk.StandDevInZ**
 Average of the standard deviation of the time derivative of the time-domain gyroscopic readings, decomposed into motion along the X, Y, and Z axes.


**31. TimeBodyAccelerometerMagnitude.Mean** 
 Average of the mean of the magnitude of the time-domain acceleration due to body motion.


**32. TimeBodyAccelerometerMagnitude.StandDev**
Average of the standard deviation of the magnitude of the time-domain acceleration due to body motion.


**33. TimeGravityAccelerometerMagnitude.Mean**
Average of the mean of the magnitude of the time-domain acceleration due to gravity.


**34. TimeGravityAccelerometerMagnitude.StandDev**
Average of the standard deviation of the magnitude of the time-domain acceleration due to gravity.


**35. TimeBodyAccelerometerJerkMagnitude.Mean**
Average of the mean of the time derivative of the magnitude of the time-domain acceleration due to body motion.


**36. TimeBodyAccelerometerJerkMagnitude.StandDev**
Average of the standard deviation of the time derivative of the magnitude of the time-domain acceleration due to body motion.


**37. TimeBodyGyroscopeMagnitude.Mean**
Average of the mean of the magnitude of the time-domain gyroscopic readings.


**38. TimeBodyGyroscopeMagnitude.StandDev**
Average of the standard deviation of the magnitude of the time-domain gyroscopic readings.


**39. TimeBodyGyroscopeJerkMagnitude.Mean**
Average of the mean of the time derivative of the magnitude of the time-domain gyroscopic readings.


**40. TimeBodyGyroscopeJerkMagnitude.StandDev**
Average of the standard deviation of the time derivative of the magnitude of the time-domain gyroscopic readings.


**41.-43. FastFourXformBodyAccelerometer.MeanInX, FastFourXformBodyAccelerometer.MeanInY, FastFourXformBodyAccelerometer.MeanInZ**
Average of the mean values of the Fourier transform of the acceleration due to body motion, decomposed into motion along the X, Y, and Z axes.


**44.-46. FastFourXformBodyAccelerometer.StandDevInX, FastFourXformBodyAccelerometer.StandDevInY, FastFourXformBodyAccelerometer.StandDevInZ**
Average of the standard deviation of the Fourier transform of the acceleration due to body motion, decomposed into motion along the X, Y, and Z axes.


**47.-49. FastFourXformBodyAccelerometerJerk.MeanInX, FastFourXformBodyAccelerometerJerk.MeanInY, FastFourXformBodyAccelerometerJerk.MeanInZ**
Average of the mean values of the time derivative of the Fourier transform of the acceleration due to body motion, decomposed into motion along the X, Y, and Z axes.


**50.-52. FastFourXformBodyAccelerometerJerk.StandDevInX, FastFourXformBodyAccelerometerJerk.StandDevInY, FastFourXformBodyAccelerometerJerk.StandDevInZ**
Average of the standard deviation of the time derivative of the Fourier transform of the acceleration due to body motion, decomposed into motion along the X, Y, and Z axes.


**53.-55. FastFourXformBodyGyroscope.MeanInX, FastFourXformBodyGyroscope.MeanInY, FastFourXformBodyGyroscope.MeanInZ**
Average of the mean values of the Fourier transform of the gyroscopic readings, decomposed into motion along the X, Y, and Z axes.


**56.-58. FastFourXformBodyGyroscope.StandDevInX, FastFourXformBodyGyroscope.StandDevInY, FastFourXformBodyGyroscope.StandDevInZ**
Average of the standard deviation of the Fourier transform of the gyroscopic readings, decomposed into motion along the X, Y, and Z axes.


**59. FastFourXformBodyAccelerometerMagnitude.Mean**
Average of the mean of the magnitude of the Fourier transform of the time-domain acceleration due to body motion.


**60. FastFourXformBodyAccelerometerMagnitude.StandDev**
Average of the standard deviation of the magnitude of the Fourier transform of the time-domain acceleration due to body motion.


**61. FastFourXformBodyAccelerometerJerkMagnitude.Mean**
Average of the mean of the time derivative of the magnitude of the Fourier transform of the time-domain acceleration due to body motion.


**62. FastFourXformBodyAccelerometerJerkMagnitude.StandDev**
Average of the standard deviation of the time derivative of the Fourier transform of the magnitude of the time-domain acceleration due to body motion.


**63. FastFourXformBodyGyroscopeMagnitude.Mean**
Average of the mean of the magnitude of the Fourier transform of the gyroscopic readings.


**64. FastFourXformBodyGyroscopeMagnitude.StandDev**
Average of the standard deviation of the magnitude of the Fourier transform of the gyroscopic readings.


**65. FastFourXformBodyGyroscopeJerkMagnitude.Mean**
Average of the mean of the time derivative of the magnitude of the Fourier transform of the gyroscopic readings.


**66. FastFourXformBodyGyroscopeJerkMagnitude.StandDev**
Average of the standard deviation of the time derivative of the magnitude of the Fourier transform of the gyroscopic readings.

