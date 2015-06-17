# download the data if it doesn't exist locally
remote <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"


# assignment directions say this should run in the current working directory
local_directory <- "."
local_directory <- "/tmp/getdata"

local_zip <- file.path(local_directory, "dataset.zip")
if (!dir.exists(local_directory)) {
  dir.create(local_directory);
}
if (!file.exists(local_zip)) {
  download.file(url=remote, destfile=local_zip, method="curl");
  unzip(local_zip, exdir=local_directory)
}

data_root <- file.path(local_directory, "UCI HAR Dataset")

# read in activity labels
activity_labels <- read.delim(
  file.path(data_root, "activity_labels.txt"), 
  sep=" ", 
  header=F, 
  col.names=c("id", "label"),
  stringsAsFactors=T)
activity_labels <- activity_labels$label

# read in feature labels
features <- read.delim(
  file.path(data_root, "features.txt"),
  sep=" ",
  header=F,
  col.names=c("id", "feature"),
  stringsAsFactors=F)
features = features$feature

# load the dataset based on its name (which maps to a sub-directory and filenames)
load_dataset <- function(dataset_name) {
  # read in the files
  x_df <- read.delim(file.path(data_root, dataset_name, paste0("X_", dataset_name, ".txt")),
             sep="",
             header=F,
             colClasses=c("numeric"))
  colnames(x_df) = features
  # only the mean() and std() columns
  x_df <- x_df[,grepl("mean()", features, fixed=T) | grepl("std()", features, fixed=T)]
  
  subject_df <- read.delim(file.path(data_root, dataset_name, paste0("subject_", dataset_name, ".txt")),
                           header=F, 
                           col.names=c("subject"))
  y_df <- read.delim(file.path(data_root, dataset_name, paste0("y_", dataset_name, ".txt")),
                     header=F,
                     col.names=c("activity"))
  # replace numeric activity with factor to make it readable
  y_df$activity = activity_labels[y_df$activity]
  
  # bind the datasets together with the dataset_name
  cbind(dataset=dataset_name, subject_df, y_df, x_df)
}

# we've got all the data in one place.
all_data = rbind(load_dataset("test"), load_dataset("train"))

# to be completely tidy, subject_dataset should be pulled from all_data since no subject is in both
# the testing and training set
library(dplyr)

all_data_tbl = tbl_df(all_data)
subject_dataset = select(all_data_tbl, subject, dataset) %>% unique %>% arrange(subject)
subject_activity_measurements = select(all_data_tbl, -dataset)


subject_activity_measurement_means <- subject_activity_measurements %>%
  group_by(subject, activity) %>%
  summarise_each(c("mean"), everything())

View(subject_activity_measurement_means)
write.table(
  subject_activity_measurement_means,
  file.path(local_directory, "subject_activity_measurement_means.txt"), 
  row.names=F,
  quote=F)

  