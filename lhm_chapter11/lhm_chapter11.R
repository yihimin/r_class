#BASIC1
tr.idx <- c(1:105)
ds.tr <- iris[tr.idx, c(1:4)]
cl.tr <- factor(iris[tr.idx, 5])

ds.tr
cl.tr
#BASIC2
ds.ts <- iris[-tr.idx, 1:4]   
cl.ts <- factor(iris[-tr.idx, 5])  
ds.ts
cl.ts
#BASIC3
install.packages("class")
library(class)   

pred <- knn(ds.tr, ds.ts, cl.tr, k=3, prob=TRUE)
ds.ts$pred <- as.character(pred)
ds.ts
#BASIC4
acc <- mean(as.character(pred) == as.character(cl.ts))
acc
#BASIC5
install.packages("class")
library(class)
c_train <- data.frame(
  wing_length =c(5.0, 5.5, 6.0, 8.0, 8.5, 9.0),
  tail_length = c(4.0, 4.5, 5.0, 7.0, 7.5, 8.0),
  comb_height = c(1.0, 1.1, 1.2, 2.5, 2.6, 2.7),
  breeds = factor(c("A","A","A","B","B","B"))
)
#BASIC6
c_test <- data.frame(
  wing_length = c(5.3, 8.3),
  tail_length =c(4.2, 7.2),
  comb_height=c(1.05, 2.55),
  breeds = factor(c("A","B"))
)
#BASIC7
install.packages("kknn")
library("kknn")
#BASIC8
c_knn3 <- kknn(breeds ~ wing_length + tail_length + comb_height,
               train = c_train,
               test = c_test,
               k = 3)
c_test$breeds_knn <- as.character(fitted(c_knn3))
c_test
#BASIC9
acc <- mean(c_test$breeds == c_test$breeds_knn)
acc
#BASIC10
tr.idx <- c(1:98)
ds.tr <- iris[tr.idx, c(2:4)]
cl.tr <- factor(iris[tr.idx, 5])
ds.tr
cl.tr
#BASIC11
ds.ts <- iris[-tr.idx, 2:4]   
cl.ts <- factor(iris[-tr.idx, 5])  
ds.ts
cl.ts

#BASIC12
pred2 <- knn(ds.tr, ds.ts, cl.tr, k = 4, prob=TRUE)
ds.ts$pred <- as.character(pred2)
ds.ts
#BASIC13
acc <- mean(as.character(pred2) == as.character(cl.ts))
acc
#BASIC14
install.packages("class")
library(class)

c_train <- data.frame(
  wing_length = c(5.0, 5.5, 6.0, 8.0, 8.5, 9.0),
  tail_length = c(4.0, 4.5, 5.0, 7.0, 7.5, 8.0),
  comb_height = c(1.0, 1.1, 1.2, 2.5, 2.6, 2.7),
  beak_length = c(2.5, 2.6, 2.7, 3.5, 3.6, 3.7),
  breeds = factor(c("A","A","A","B","B","B"))
)
#BASIC15
c_test <- data.frame(
  wing_length = c(5.3, 8.3),
  tail_length = c(4.2, 7.2),
  comb_height = c(1.05, 2.55),
  beak_length = c(2.55, 3.55),
  breeds_knn = factor(c("A", "A"))
)
#BASIC16
install.packages("kknn")
library("kknn")

c_knn3 <- kknn(breeds ~ wing_length + tail_length + beak_length,
               train = c_train,
               test = c_test,
               k = 2)
c_test$breeds_knn <- as.character(fitted(c_knn3))
c_test

#BASIC17
acc <- mean(c_test$breeds == c_test$breeds_knn)
acc

#code1
library(class)

tr.idx <- c(1:25, 51:75, 101:125)
ds.tr <- iris[tr.idx, 1:4]
ds.ts <- iris[-tr.idx, 1:4]
cl.tr <- factor(iris[tr.idx, 5])
cl.ts <- factor(iris[-tr.idx, 5])

cl.tr
cl.ts
#code2
library(class)

pred <- knn(ds.tr, ds.ts, cl.tr, k=3, prob=FALSE)
pred
#code3
acc <- mean(pred==cl.ts)
acc
table(cl.ts)
table(pred)
#code4
install.packages("DMwR2")
library(DMwR2)

c_train <- read.csv("chick_train.csv", header = TRUE)
c_test <- read.csv("chick_test.csv", header = TRUE)

c_knn3 <- kNN(breeds ~ wing_length + tail_length + comb_height, 
              c_train, c_test, k = 3)
c_test$pred3 <- c_knn3
head(c_test)
#code5
acc <- mean(c_test$breeds == c_test$pred3)
acc
table(c_test$breeds)
table(c_test$pred3)
#code6
c_train5 <- read.csv("chick_train.csv", header = TRUE)
c_test5 <- read.csv("chick_test.csv", header = TRUE)

c_knn5 <- kNN(breeds ~ wing_length + tail_length + comb_height,
              c_train5, c_test5, k = 5)
c_test5$pred5 <- c_knn5
head(c_test5)
#code7
acc5 <- mean(c_test5$breeds == c_test5$pred5)
acc5

table(c_test5$breeds)
table(c_test5$pred5)

#test1
clhm <- read.csv("csv_exam.csv", header = TRUE)
cl_kmclhm <- kmeans(clhm[,c("math", "english", "science")], centers = 3)
cl_kmclhm
clhm$cluster <- cl_kmclhm$cluster
clhm
#test2
library(class)
tr.idx <- c(1:15)    
ds.tr <- clhm[tr.idx, 3:5]
ds.ts <- clhm[16:20, 3:5]
cl.tr <- factor(clhm[tr.idx, 6])
cl.ts <-  factor(clhm[16:20, 6])
cl.tr
cl.ts
#test3
predlhm <- knn(ds.tr, ds.ts, cl.tr, k = 3, prob=TRUE)
predlhm

Acc <- mean(as.character(predlhm) == as.character(cl.ts))
Acc

table(predlhm)
table(cl.ts)

#test4
favoritecsvlhm <- read.csv("2025_favorite.csv", header = TRUE)
head(favoritecsvlhm)
favoritecsvlhmsub <- favoritecsvlhm[,4:9]
head(favoritecsvlhmsub)
#test5
library(cluster)
clusplot(favoritecsvlhmsub, favoritecsvlhmsub$Cluster,
         color = TRUE,
         shade = FALSE,
         labels = 2,
         lines = 2)
#test6
library(class)
ts.idx <- c(31:50)
ds.tr <- favoritecsvlhm[-ts.idx, 4:8]
ds.ts <- favoritecsvlhm[ts.idx, 4:8]
ds.ts
cl.tr <- factor(favoritecsvlhm[-ts.idx, 9])
cl.ts <- factor(favoritecsvlhm[ts.idx, 9])
#test7
Pred_favoritelhm <- knn(ds.tr, ds.ts, cl.tr, k=3, prob=FALSE)
Pred_favoritelhm
cl.ts
Acc <- mean(Pred_favoritelhm == cl.ts)
Acc

table(Pred_favoritelhm)
table(cl.ts)
#test8
tr.idx <- c(1:20, 40:60)

ds.tr <- ToothGrowth[tr.idx, c(1, 3)]   # len, dose
ds.ts <- ToothGrowth[-tr.idx, c(1, 3)]

cl.tr <- factor(ToothGrowth[tr.idx, 2])      # supp
cl.ts <- factor(ToothGrowth[-tr.idx, 2])

library(class)
Pred_ToothGrowthlhm <- knn(ds.tr, ds.ts, cl.tr, k=2, prob = TRUE)

Acc <- mean(as.character(Pred_ToothGrowthlhm) == as.character(cl.ts))
Acc
