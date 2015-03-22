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

obtain_tables <- function(type) {
      files <- list.files(paste("UCI HAR Dataset/", type, sep = ""), pattern = ".txt", full.names = TRUE)
      list <- lapply(files, read.table)
      merge_table <- do.call(cbind, list)
      merge_table
}

label_table <- function(table) {
      feature <- read.table("UCI HAR Dataset/features.txt")
      activity <- read.table("UCI HAR Dataset/activity_labels.txt")
      names(table) <- c("Subject", as.character(feature[, 2]), "Activity")
      table[, 563] <- as.factor(table[ ,563])
      table[,1] <- as.factor(table[,1])
      levels(table[,563]) <- activity[,2]
      table
}

create_subset <- function(table) {
      super <- union(grep("mean()", names(table), fixed = TRUE), grep("std()", names(table), fixed = TRUE))
      subsetted_table <- table[, c(1, super, 563)]
      subsetted_table
}

create_tidy_set <- function(table) {
      tablemelt <- melt(table, id = c("Subject", "Activity"), measure.vars = names(table[,2:(ncol(table)-1)]))
      reshaped <- dcast(tablemelt, Subject + Activity ~ variable, mean)
      reshaped
}