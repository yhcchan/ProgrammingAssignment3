# This is the core function. It runs the analysis on the data and returns the second independent tidy 
# dataset required by step 5 of the assignment. It is necessary to set the working directory to be the
# directory that contains the UCI HAR dataset folder. 

# Packages required: reshape2

run_analysis <- function() {
      library(reshape2)
      train_table <- obtain_tables("train")
      test_table <- obtain_tables("test")
      merged_table <- rbind(train_table, test_table)
      labeled_table <- label_table(merged_table)
      subset_table <- create_subset(labeled_table)
      final <- create_tidy_set(subset_table)
      final
}

# This function takes a string as its parameter (i.e. either "test" or "train") and returns a table
# of containing the subject labels, activity labels and the activity data for either the test or training
# category, depending on the parameter.

obtain_tables <- function(type) {
      files <- list.files(paste("UCI HAR Dataset/", type, sep = ""), pattern = ".txt", full.names = TRUE)
      list <- lapply(files, read.table)
      merge_table <- do.call(cbind, list)
      merge_table
}

# This function labels the rows of the table with descriptive names, using the labels in "features.txt"
# as the row names and naming the subject and activity columns "Subject" and "Activity" respectively. The
# function also renames the factor levels of the Activity column with the labels from "activity_labels.txt"
# for greater clarity.

label_table <- function(table) {
      feature <- read.table("UCI HAR Dataset/features.txt")
      activity <- read.table("UCI HAR Dataset/activity_labels.txt")
      names(table) <- c("Subject", as.character(feature[, 2]), "Activity")
      table[, 563] <- as.factor(table[ ,563])
      table[,1] <- as.factor(table[,1])
      levels(table[,563]) <- activity[,2]
      table
}

# This function subsets the table to include only the mean() and std() data. As the assignment only asks
# for either of those two types of feature data, I have not included meanfreq() and other derivative
# features for simplicity. 

create_subset <- function(table) {
      super <- union(grep("mean()", names(table), fixed = TRUE), grep("std()", names(table), fixed = TRUE))
      subsetted_table <- table[, c(1, super, 563)]
      subsetted_table
}

# This function takes the table as its parameter, melts it, and recasts it so that the data is averaged
# according to each test subject and their activity. 

create_tidy_set <- function(table) {
      tablemelt <- melt(table, id = c("Subject", "Activity"), measure.vars = names(table[,2:(ncol(table)-1)]))
      reshaped <- dcast(tablemelt, Subject + Activity ~ variable, mean)
      reshaped
}