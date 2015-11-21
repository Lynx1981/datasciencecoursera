test.data <- read.table("./UCI HAR Dataset/test/X_test.txt")
test.subj <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test.activity <- read.table("./UCI HAR Dataset/test/y_test.txt")

train.data <- read.table("./UCI HAR Dataset/train/X_train.txt")
train.subj <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train.activity <- read.table("./UCI HAR Dataset/train/y_train.txt")

all.data <-rbind(train.data, test.data)
all.subj <- rbind(train.subj, test.subj)

activity.names <- read.table("./UCI HAR Dataset/activity_labels.txt")
all.activity <- rbind (train.activity, test.activity)
all.activity.names <- merge (all.activity, activity.names)[,2]

feature.names <- read.table("./UCI HAR Dataset/features.txt")
names(all.data) <- feature.names[,2]

selected.data<-all.data[,grepl("-mean()", colnames(all.data), fixed=TRUE)|grepl("-std()", colnames(all.data),fixed=TRUE)]
dimensions <- cbind(all.subj, all.activity.names)
names(dimensions) <- c("subject", "activity")

tidy.data <- cbind(dimensions, selected.data)
aggregated.data <- aggregate(tidy.data[,c(-1,-2)], list(tidy.data$subject, tidy.data$activity), FUN=mean, na.rm=TRUE)
names(aggregated.data) <- sub("", "Average_", names(aggregated.data))
names(aggregated.data)[1] <- "Subject"
names(aggregated.data)[2] <- "Activity"
aggregated.data
