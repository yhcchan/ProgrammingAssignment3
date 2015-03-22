==================================================================
# README for Course Project
==================================================================

This repo contains the following:

	-run_analysis.R
	-courseproject.txt
	-Codebook.md
	-README.md
==================================================================

run_analysis.R

- This is the script used to convert the disparate data in the UCI HAR dataset into a tidy data set that provides the average of the test data for each of the 30 participants, according to each of the six activities they performed. This script should only be run when the working directory is set to be the same directory that contains the UCI HAR folder. To run the script, you will have to download and install the reshape2 package.

- run_analysis.R runs in five steps:

	1. Reads the UCI data and clips the subject and activity labels, as well as the raw data together for the respective test and train sets of data.

	2. Combines the test and train data into one table using rbind().

	3. Labels the dataset using the appropriate names from the features.txt file. Converts the numerical data in the “Activity” column into a factor and renames the labels with their descriptive equivalents from the “activity_labels.txt” file. 

	4. Subsets the table so that only mean() and std() data feature. The table excludes meanfreq() for simplicity.

	5. Creates the independent tidy data set that provides the mean values for each activity performed by each person.


courseproject.txt

- This is the resulting data set from the run_analysis.R script. To read the table, run read.table(“./courseproject.txt”) in R.

Codebook.md

- The codebook provides descriptive details of the columns in the tidy data set.

README.md

- The current open document.

