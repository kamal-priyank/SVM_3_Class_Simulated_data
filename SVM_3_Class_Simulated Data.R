require(tidyverse)
library(ggplot2)
library(e1071)
set.seed(123)

SimData <- data.frame(replicate(2, rnorm(50, mean = rnorm(1, mean = 0),  sd = 3))) %>%
  rbind(data.frame(replicate(2, rnorm(50, mean = rnorm(1, mean = 1), sd = 3)))) %>%
  rbind(data.frame(replicate(2, rnorm(50, mean = rnorm(1, mean = 2), sd = 3)))) %>%
  as.tibble %>%
  mutate(id = row_number(),
         class = ifelse(id <= 50, 'A',
                        ifelse(id <= 100, 'B',
                               'C'))) %>%
select(-id)

SP<-ggplot(SimData, aes(x = X1, y = X2)) +
geom_point(aes(color = factor(class)))
SP
SP +
  theme_light() +
  labs(
    x = "Feature 1",
    y = "Feature 2",
    color = "Class",
    title = "Scatter Plot of The Simulated Dataset",
    subtitle = "3-Class Dataset"
  )
SimData$class=factor(SimData$class)
train.index=createDataPartition(SimData$class,p=0.5,list=FALSE)
train=SimData[train.index,]
test=SimData[-train.index,]
Class.test = SimData$class[-train.index]

# SVM with Linear Kernel

svm<-svm(class ~ ., data = SimData,kernel="linear",ranges = list(gamma = 2^(-1:1), cost = 2^(2:4)),
         tunecontrol = tune.control(sampling = "cross"),cross=5)
svm
pred=predict(svm,test,type="class")
table(Predicted=pred,Actual=Class.test)
mean(pred==Class.test)*100
plot(svm,SimData)

# SVM with Polynomial Kernel

svm<-svm(class ~ ., data = SimData,kernel="polynomial",ranges = list(gamma = 2^(-1:1), cost = 2^(2:4)),
         tunecontrol = tune.control(sampling = "cross"),cross=5)
svm
pred=predict(svm,test,type="class")
table(Predicted=pred,Actual=Class.test)
mean(pred==Class.test)*100
plot(svm,SimData)

# SVM with Radial Kernel

svm<-svm(class ~ ., data = SimData,kernel="radial",ranges = list(gamma = 2^(-1:1), cost = 2^(2:4)),
         tunecontrol = tune.control(sampling = "cross"),cross=5)
svm
pred=predict(svm,test,type="class")
table(Predicted=pred,Actual=Class.test)
mean(pred==Class.test)*100
plot(svm,SimData)

