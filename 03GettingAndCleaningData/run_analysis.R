# 1. Read all data and combine
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
sbj_train <- read.table("./train/subject_train.txt")
data_train<- cbind(sbj_train, y_train, X_train)

X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
sbj_test <- read.table("./test/subject_test.txt")
data_test<- cbind(sbj_test, y_test, X_test)

data <- rbind(data_train, data_test)

# 2. Filter the mean and std data through 
# feature names
feature_names <- read.table("features.txt", colClasses="character")
fil = grep("mean\\(\\)|std\\(\\)", feature_names$V2)
# Need +2 because of two columns sbj and y
# added at the front of data.frame
data1 <- data[,c(1:2, fil+2)]

# 3. Rename activity labels
data1[,2] <- as.factor(data1[,2])
levels(data1[,2]) <- c("WALKING","WALKING_UPSTAIRS",
                       "WALKING_DOWNSTAIRS","SITTING",
                       "STANDING","LAYING")

# 4. Rename variables in the final data.frame
names(data1) <- c("Subject", "Activity", feature_names$V2[fil])

# 5. Take the average of all variables
# based on indices Subject and Activity
ans = aggregate(.~ Subject + Activity, data=data1, FUN=mean)
write.table(ans, file = "result.txt", row.name = F)
