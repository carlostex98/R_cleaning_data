

##loading the test data 


tests <- cbind(
  read.table("UCI HAR Dataset/test/subject_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/y_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/X_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt", sep = ""),
  read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt", sep = "")
)

##loading the train data

train <- cbind(
  read.table("UCI HAR Dataset/train/subject_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/y_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/X_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", sep = ""),
  read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", sep = "")
)


##data merge


all_data <- merge(tests, train, by.x = tests$v1, by.y = train$v1)

mean(all_data)
sd(all_data)

write.table(all_data, file = "tidy.txt", row.name = FALSE)

