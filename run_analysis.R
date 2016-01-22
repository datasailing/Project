setwd("C:/Users/Vini/Documents/R")
library(dplyr)
library(tidyr)
library(data.table)
if (!file.exists("GCD Assign")) {
        dir.create("GCD Assign")
}

##  download data and unzip it 
file<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file, destfile = "./GCD Assign/data.zip", mode ="wb")
unzip("./GCD Assign/data.zip", exdir = "./GCD Assign")
dateDownloaded <- date()



## TEST DATA
## read test data and convert to dplyr data frames
td <- tbl_df(fread("./GCD Assign/UCI HAR Dataset/test/X_test.txt"))
tl <- tbl_df(fread("./GCD Assign/UCI HAR Dataset/test/y_test.txt"))
ts <- tbl_df(fread("./GCD Assign/UCI HAR Dataset/test/subject_test.txt"))
## the file below adds column names to the test data
vb <- tbl_df(fread("./GCD Assign/UCI HAR Dataset/features.txt"))
## add vb as column names for td
colnames(td) <- vb$V2
colnames(tl) <- "activity"
colnames(ts) <- "subject"
## combine dataframes 
test <- tbl_df(cbind(tl,ts,td))


## TRAIN DATA, same process as for test
ttd <- tbl_df(fread("./GCD Assign/UCI HAR Dataset/train/X_train.txt"))
ttl <- tbl_df(fread("./GCD Assign/UCI HAR Dataset/train/y_train.txt"))
tts <- tbl_df(fread("./GCD Assign/UCI HAR Dataset/train/subject_train.txt"))
colnames(ttd) <- vb$V2
colnames(ttl) <- "activity"
colnames(tts) <- "subject"
train <- tbl_df(cbind(ttl,tts,ttd))


## 1. MERGE TEST AND TRAINING SETS
z <- rbind(test,train)
## remove duplicate column names from z
z <- z[, !duplicated(colnames(z))]


## 2. EXTRACT ONLY THE MEAN AND STD FOR EACH MEASUREMENT
## start by writing a vector with the position of the desired columns
y1 <- grep("mean()", colnames(z), fixed = TRUE)
y2 <- grep("std()", colnames(z), fixed = TRUE)
y <- sort(c(y1,y2))
## add columns 1 and 2 to the above selection
y <- c(c(1,2),y)
## select only columns in the y vector
z <- z[,y]
z<- arrange(z, activity, subject)


## 3. NAME ACTIVITIES IN THE DATA SET.
## label the activities according to their codenumber
activ <- function(x){ 
        if (x==1){
                "walking"
        } else if (x==2){
                "walking upstairs"
        } else if (x==3){
                "walking downstairs"
        } else if (x==4){
                "sitting"
        } else if (x==5){
                "standing"
        } else
                "laying"
}
z <- mutate(z, activity = sapply(activity, activ))
## make character variable activity into factor variable
z <- mutate(z, activity = as.factor(activity),subject = as.factor(subject))


## 4. RENAME THE VARIABLES
## although it is preferable to use lower-case, some capitals
## were kept to help undestand the meaning of the long variable names.
n <- colnames(z)
#n <- tolower(n) 
n <- gsub("-","",n) 
n <- gsub("\\()","",n)
n <- sub("Acc","Linearacc",n) 
n <- sub("Gyro","Angvelocity",n)
n <- sub("mean","Mean",n) 
n <- sub("std","Sigma",n)
n <- sub("^t","time",n)
n <- sub("^f","frequency",n)
n <- sub("BodyBody","Body",n)

colnames(z) <- n

## 5. AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH sUBJECT
y <- group_by(z,activity, subject)

TheEnd <- summarise_each_(y, funs(mean),names(y))

## edit column names to account for the average calculation and improve readability
t1 <- names(TheEnd[1:2])
t2 <- names(TheEnd[3:68])
t2 <- sub("^t","avgT",t2)
t2 <- sub("^f","avgF",t2)
names(TheEnd) <- c(t1,t2)

##  FINAL OUTPUT
write.table(TheEnd,file = "./GCD Assign/data.txt", row.names = FALSE)


