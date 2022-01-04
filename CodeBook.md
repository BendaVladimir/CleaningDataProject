# Codebook and transformation for processing data from source

Basic data were obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and were used in article _[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012_

## Transformations used in script in order to process data from basic form to dataset with comprehensive names

1. Importing training and testing datasets
2. Import feature names
3. Assigning feature names to training and testing datasets
4. Binding separate datasets to single output dataset with bind_cols and bind_rows functions
5. Filtering single output for columns that contain mean and std values
6. Creating comprehensive names by replacing strings and regular expressions
7. Filtering for columns with mean in their name

## Codebook of output values

* **TimeBodyAccelerationMean_X** – Mean time of acceleration of body signal on X access (numeric value)
* **TimeBodyAccelerationMean_Y** - Mean time of acceleration of body signal on Y access (numeric value)
* **TimeBodyAccelerationMean_Z** - Mean time of acceleration of body signal on Z access (numeric value)
* **TimeGravityAccelerationMean_X** - Mean time of application gravity signal of on X access (numeric value)
* **TimeGravityAccelerationMean_Y** - Mean time of application gravity signal of on Y access (numeric value)
* **TimeGravityAccelerationMean_Z** - Mean time of application gravity signal of on Z access (numeric value)
* **TimeBodyAccelerationJerkMean_X** - Mean time of acceleration of jerk gravity signal of on X access (numeric value)
* **TimeBodyAccelerationJerkMean_Y** - Mean time of acceleration of jerk gravity signal of on Y access (numeric value)
* **TimeBodyAccelerationJerkMean_Z** - Mean time of acceleration of jerk gravity signal of on Z access (numeric value)
* **TimeBodyGyroMean_X** - Mean time of gyro signal of on X access (numeric value)
* **TimeBodyGyroMean_Y** - Mean time of gyro signal of on Y access (numeric value)
* **TimeBodyGyroMean_Z** - Mean time of gyro signal of on Z access (numeric value)
* **TimeBodyGyroJerkMean_X** - Mean time of gyro jerk signal of on X access (numeric value)
* **TimeBodyGyroJerkMean_Y** - Mean time of gyro jerk signal of on Y access (numeric value)
* **TimeBodyGyroJerkMean_Z** - Mean time of gyro jerk signal of on Z access (numeric value)
* **TimeBodyAccelerationMagMean** - Mean time of magnetic body acceleration signal (numeric value)
* **TimeGravityAccelerationMagMean** - Mean time of magnetic gravity acceleration signal (numeric value)
* **TimeBodyAccelerationJerkMagMean** - Mean time of magnetic body jerk acceleration signal (numeric value)
* **TimeBodyGyroMagMean** - Mean time of magnetic body gyro signal (numeric value)
* **TimeBodyGyroJerkMagMean** - Mean time of magnetic body jerk gyro signal (numeric value)
* **FuerierBodyAccelerationMean_X** – Mean value of Fuerier transformation for body acceleration on X access (numeric value)
* **FuerierBodyAccelerationMean_Y** - Mean value of Fuerier transformation for body acceleration on Y access (numeric value)
* **FuerierBodyAccelerationMean_Z** - Mean value of Fuerier transformation for body acceleration on Z access (numeric value)
* **FuerierBodyAccelerationJerkMean_X** - Mean value of Fuerier transformation for body jerk acceleration on X access (numeric value)
* **FuerierBodyAccelerationJerkMean_Y** - Mean value of Fuerier transformation for body jerk acceleration on Y access (numeric value)
* **FuerierBodyAccelerationJerkMean_Z** - Mean value of Fuerier transformation for body jerk acceleration on Z access (numeric value)
* **FuerierBodyGyroMean_X** - Mean value of Fuerier transformation for gyro signal on X access (numeric value)
* **FuerierBodyGyroMean_Y** - Mean value of Fuerier transformation for gyro signal on Y access (numeric value)
* **FuerierBodyGyroMean_Z** - Mean value of Fuerier transformation for gyro signal on Z access (numeric value)
* **FuerierBodyAccelerationMagMean** - Mean value of Fuerier transformation for body acceleration from magnetic signal (numeric value)
* **FuerierBodyBodyAccelerationJerkMagMean** - Mean value of Fuerier transformation for body jerk acceleration from magnetic signal (numeric value)
* **FuerierBodyBodyGyroMagMean** - Mean value of Fuerier transformation for gyro from magnetic signal (numeric value)
* **FuerierBodyBodyGyroJerkMagMean** - Mean value of Fuerier transformation for gyro jerk from magnetic signal (numeric value)
* **TimeBodyAccelerationStandardDeviation_X** – Standard deviation of body acceleration on X access (numeric value)
* **TimeBodyAccelerationStandardDeviation_Y** - Standard deviation of body acceleration on Y access (numeric value)
* **TimeBodyAccelerationStandardDeviation_Z** - Standard deviation of body acceleration on Z access (numeric value)
* **TimeGravityAccelerationStandardDeviation_X** - Standard deviation of gravity acceleration on X access (numeric value)
* **TimeGravityAccelerationStandardDeviation_Y** - Standard deviation of gravity acceleration on Y access (numeric value)
* **TimeGravityAccelerationStandardDeviation_Z** - Standard deviation of gravity acceleration on Z access (numeric value)
* **TimeBodyAccelerationJerkStandardDeviation_X** - Standard deviation of jerk acceleration on X access (numeric value)
* **TimeBodyAccelerationJerkStandardDeviation_Y** - Standard deviation of jerk acceleration on Y access (numeric value)
* **TimeBodyAccelerationJerkStandardDeviation_Z** - Standard deviation of jerk acceleration on Z access (numeric value)
* **TimeBodyGyroStandardDeviation_X** - Standard deviation of gyro on X access (numeric value)
* **TimeBodyGyroStandardDeviation_Y** - Standard deviation of gyro on Y access (numeric value)
* **TimeBodyGyroStandardDeviation_Z** - Standard deviation of gyro on Z access (numeric value)
* **TimeBodyGyroJerkStandardDeviation_X** - Standard deviation of gyro jerk on X access (numeric value)
* **TimeBodyGyroJerkStandardDeviation_Y** - Standard deviation of gyro jerk on Y access (numeric value)
* **TimeBodyGyroJerkStandardDeviation_Z** - Standard deviation of gyro jerk on Z access (numeric value)
* **TimeBodyAccelerationMagStandardDeviation** - Standard deviation of acceleration from magnetic signal (numeric value)
* **TimeGravityAccelerationMagStandardDeviation** - Standard deviation of gravity acceleration from magnetic signal (numeric value)
* **TimeBodyAccelerationJerkMagStandardDeviation** - Standard deviation of jerk acceleration from magnetic signal (numeric value)
* **TimeBodyGyroMagStandardDeviation** - Standard deviation of gyro from magnetic signal (numeric value)
* **TimeBodyGyroJerkMagStandardDeviation** - Standard deviation of gyro jerk from magnetic signal
* **FuerierBodyAccelerationStandardDeviation_X** - Standard deviation of acceleration of Fuerier transformed signal on X access (numeric value)
* **FuerierBodyAccelerationStandardDeviation_Y** - Standard deviation of acceleration of Fuerier transformed signal on Y access (numeric value)
* **FuerierBodyAccelerationStandardDeviation_Z** - Standard deviation of acceleration of Fuerier transformed signal on Z access (numeric value)
* **FuerierBodyAccelerationJerkStandardDeviation_X** - Standard deviation of jerk acceleration of Fuerier transformed signal on X access (numeric value)
* **FuerierBodyAccelerationJerkStandardDeviation_Y** - Standard deviation of jerk acceleration of Fuerier transformed signal on Y access (numeric value)
* **FuerierBodyAccelerationJerkStandardDeviation_Z** - Standard deviation of jerk acceleration of Fuerier transformed signal on Z access (numeric value)
* **FuerierBodyGyroStandardDeviation_X** - Standard deviation of gyro of Fuerier transformed signal on X access (numeric value)
* **FuerierBodyGyroStandardDeviation_Y** - Standard deviation of gyro of Fuerier transformed signal on Y access (numeric value)
* **FuerierBodyGyroStandardDeviation_Z** - Standard deviation of gyro of Fuerier transformed signal on Z access (numeric value)
* **FuerierBodyAccelerationMagStandardDeviation** - Standard deviation of magnetic acceleration of Fuerier transformed signal (numeric value)
* **FuerierBodyBodyAccelerationJerkMagStandardDeviation** - Standard deviation of magnetic acceleration jerk of Fuerier transformed signal (numeric value)
* **FuerierBodyBodyGyroMagStandardDeviation** - Standard deviation of gyro of Fuerier transformed magnetic signal (numeric value)
* **FuerierBodyBodyGyroJerkMagStandardDeviatio**n - Standard deviation of gyro jerk of Fuerier transformed magnetic signal (numeric value)
