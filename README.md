# Coursera Getting and Cleaning Data Course Project

This repository has the R code for accessing and tidying the data gathered from accelerometers from 
the Samsung Galaxy S smartphone.  A description of the original dataset may be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

## Acquiring data

The first step of the script is to acquire the data. The original dataset was found on the web 
at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on 
June 16th, 1973.

This zip file contained a few metadata files and then a `test` and `train` subdirectory. 
Within each subdirectory were 3 files:

  * `X` -- all the measurements captured by the Samsung phone.
  * `y`-- numeric identifier of which activity was being done when the measurements were captured.
  * `subject` -- numeric identifier of which subject was doing the activity.

Each of these files had the same number of rows, where each row represented a separate observation.

## Variable descriptions

Variable descriptions were pulled from the metadata files `features.txt` and `activity_labels.txt` files. 
The former listed all the measurements found in the `X` files. The latter mapped the numeric identifiers 
in the `y` files to string descriptions of activities, such as standing or walking.

## Processing the data

For both directories, `train` and `test`, the same process was done:

  * Read in the `X` dataset.
  * Select only those columns which capture the mean or standard deviation of a measurement.
  * Read in the `y` dataset.
  * Map the numeric activity identifier to the appropriate string in `activity_labels.txt`.
  * Read in the `subject` dataset to get the subject identifier.
  * These three datasets were then merged together and returned.
  
Finally, the training and testing datasets were merged together into one dataset containing all 
the observations for each subject in the dataset.

## Summarizing the data

The data was finally summarized. Each measurement was summarized to its mean value for
that activity by that subject. This data was written out to the file 
`subject_activity_measurement_means.txt`. `CodeBook.md` provides a description of the 
fields in this file.

