## Project for Cleaning Data
## Loading the Column Labels
## Assumes that all data files are in the directory from which the script is executed.
colLabels<-read.table("./features.txt",sep="",stringsAsFactors=FALSE)
## Boolean logic to select the kept rows.  Can combine into a single expression ...
## Need \\ to escape the ( {required to not grab meanFreq columns} and use | for logical or.
all_kept<-grepl("mean\\(\\)|std",colLabels$V2)

## The x-data keeps the same column ordering ...
trainData<-read.table("./X_train.txt",sep="",col.names=colLabels$V2)
## Subset the training data to keep only the desired columns.  all_kept is a boolean vector.
keptTrain<-trainData[,all_kept]

## Read the activity ID's
activityID<-read.table("./y_train.txt",sep="",col.names="ActID")
## And the subject ID's
subjTrain<-read.table("./subject_train.txt",sep="",col.names="SubjID")
## Now to bind the Subject ID's and Activity ID's
trainWithBoth<-cbind(subjTrain,activityID,keptTrain)

## Repeat for the test set data.  I believe the column headers are required for proper
## r-binding.  At least I think it didn't work when I tried it without the column headers.
## The c-binding must occur prior to the r-binding for each data set to have the same number of 
## columns.  The parsing occurs prior to c-binding because the boolean vector acts on 
## column position, not column name.
testData<-read.table("./X_test.txt",sep="",col.names=colLabels$V2)
## Subset the training data to keep only the desired columns
keptTest<-testData[,all_kept]

## Read the activity ID's for the test set.
testActID<-read.table("./y_test.txt",sep="",col.names="ActID")
## and the test set subject ID's
subjTest<-read.table("./subject_test.txt",sep="",col.names="SubjID")
## Now to bind the Subject ID's.
testWithBoth<-cbind(subjTest,testActID,keptTest)

## Now to rbind the two complete data sets. This syntax yields test before training.  
## It shouldn't matter, given what we are being asked to do.
fullData<-rbind(testWithBoth,trainWithBoth)

## Create data frame with the average of each column, particular for a subject and activity.
## Following example on 
## http://stackoverflow.com/questions/8488023/elegant-way-to-solve-ddply-task-with-aggregate-hoping-for-better-performance
tidy<-aggregate(fullData,list(fullData$SubjID,fullData$ActID), FUN=mean)
## The data frame also includes the average of the Subject ID and Activity ID columns, so lop 
## off the first two columns.  This retains columns with headers of SubjID and ActID in lieu
## of the columns named for the parsing variables (Group.1 and Group.2)
tidier<-tidy[-(1:2)]
## Well, that was a hack but I can't figure out a short way to omit the ActID and SubjID columns
## from the averaging.  From the example cited, it would require a 66-element c() statement.

## Next to create the meaningful activity names.  Need to convert numbers (1,2,...) to 
## descriptive strings.  There doesn't seem to be a simple equivalent to a CASE statement, so ...
tidier$ActID[tidier$ActID==1]<-"Walking"
tidier$ActID[tidier$ActID==2]<-"Walking_Upstairs"
tidier$ActID[tidier$ActID==3]<-"Walking_Downstairs"
tidier$ActID[tidier$ActID==4]<-"Sitting"
tidier$ActID[tidier$ActID==5]<-"Standing"
tidier$ActID[tidier$ActID==6]<-"Laying"
## This was only done for the tidied data set, as that is the intended output for the project.
## The replacement could have been done in fullData, but that would have required additional 
## manipulation of the aggregate results; this also allows applying the conditionals to the
## smaller data frame. 

## Meaningful column names??? 
## Create a vector of the current column names.
betterCols<-colnames(tidier)
## Now to start with gsub to improve the column names.  The actual analysis and determination
## of the order of substitutions was performed in Excel.
betterCols<-gsub(".X","InX",betterCols)
betterCols<-gsub(".Y","InY",betterCols)
betterCols<-gsub(".Z","InZ",betterCols)
betterCols<-gsub("fBodyBody","FastFourXformBody",betterCols)
betterCols<-gsub("fBody","FastFourXformBody",betterCols)
betterCols<-gsub("tBody","TimeBody",betterCols)
betterCols<-gsub("tGravity","TimeGravity",betterCols)
betterCols<-gsub("Acc","Accelerometer",betterCols)
betterCols<-gsub("Gyro","Gyroscope",betterCols)
betterCols<-gsub("Mag","Magnitude",betterCols)
betterCols<-gsub("std..","StandDev",betterCols)
betterCols<-gsub("mean..","Mean",betterCols)
## That was really hack-tacular, but this makes the column names obnoxiously descriptive.
## Set the actual column names to betterCols.
colnames(tidier)<-betterCols
## Final step is to output the tidied data.
write.table(tidier,"./tidyData.txt",sep=" ",row.names=FALSE)
