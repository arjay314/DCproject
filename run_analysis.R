## COMMON FILES
## read in the list of feature names
ldata <- read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
## read in activity descriptions
activity <- read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
## find all columns involving mean or std
sub3 <- grep("mean()|std()|meanFreq()",ldata[,2])

## TEST
## read in the test dataset
testData <- read.table("UCI HAR Dataset/test/X_test.txt",nrows=3000,colClass="numeric")
## extract the subset of mean and std features
testData2 <- testData[,sub3]
## load subject and activity data
testSubj <- read.table("UCI HAR Dataset/test/subject_test.txt",nrows=3000,colClass="numeric")
testActv <- read.table("UCI HAR Dataset/test/y_test.txt",nrows=3000,colClass="numeric")
## merge subject and activity columns to test data
testData3 <- cbind(testSubj,testActv,testData2)

## TRAIN
## read in the training dataset
trainData <- read.table("UCI HAR Dataset/train/X_train.txt",nrows=7500,colClass="numeric")
## extract the subset of mean and std features
trainData2 <- trainData[,sub3]
## load subject and activity data
trainSubj <- read.table("UCI HAR Dataset/train/subject_train.txt",nrows=7500,colClass="numeric")
trainActv <- read.table("UCI HAR Dataset/train/y_train.txt",nrows=7500,colClass="numeric")
## merge subject and activity columns to test data
trainData3 <- cbind(trainSubj,trainActv,trainData2)

## MERGE
## combine the test and training extracts
composite <- rbind(testData3,trainData3)
## translate activity codes to char descriptions
composite[,2] <- activity[composite[,2],2]
## calc average of each column
aggdata <- aggregate(composite[,3:81],by=list(composite[,1],composite[,2]),FUN=mean)
## add in column names
names(aggdata)[1:81] <- c("Subject","Activity",ldata[sub3,2])
## add "avg-" prefix to all numeric columns
names(aggdata)[3:81] <- paste("avg", names(aggdata)[3:81], sep = "-")

## OUTPUT a "tidy data set"
write.table(aggdata,file="average_mean_and_sd.txt",row.names=FALSE,quote=FALSE)
