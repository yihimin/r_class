#1
library(cluster)
mydata <- iris[,1:4]
fit <- kmeans(x=mydata, centers=3)
fit
#2
fit$cluster
#3
fit$centers
#4
clusplot(mydata, fit$cluster, 
         color=TRUE, shade=TRUE,
         labels=1, lines=0)
#5
clusplot(mydata, fit$cluster, 
          color=TRUE, shade=FALSE,
          labels=1, lines=0)
#6
clusplot(mydata, fit$cluster, 
          color=TRUE, shade=TRUE,
          labels=2, lines=0)
#7
clusplot(mydata, fit$cluster, 
          color=TRUE, shade=TRUE,
          labels=2, lines=1)
#8
std <- function(X) {
  return((X-min(X))/(max(X)-min(X)))
}

mydata <- apply(iris[c(1:6),c(1:2)],
                2,std)
mydata
#9
mydata <- iris[,1:3]
fittest <- kmeans(x=mydata, centers=2)
fittest$cluster
fittest$centers
#10
clusplot(mydata, fit$cluster, 
         color=TRUE, shade=FALSE, 
         labels=1, lines=1)

#11
nor <- function(x) {
  return (x-min(x))/ (max(x)-min(x))
}

mydata <- apply(iris[1:3, 1:2])
head(mydata)

#code1
head(Orange)
Orange[,c(2,3)]
#code2
std <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

mydataOr <- apply(Orange[,2:3], 2, std)
mydataOr
#code3
fitOr <- kmeans(x=mydataOr, centers=4)
fitOr
#code4
fitOr$cluster
fitOr$centers
#code5
library(cluster)
clusplot(mydataOr, fitOr$cluster,
         color=TRUE, shade=TRUE,
         labels=2, lines=0)
#code6
subset(mydataOr, fitOr$cluster ==1)
subset(mydataOr, fitOr$cluster ==2)
subset(mydataOr, fitOr$cluster ==3)
subset(mydataOr, fitOr$cluster ==4)
#code7
cl <- read.csv("chick.csv", header = TRUE)
str(cl)
summary(cl)
#code8
plot(cl$food,cl$weight)
#code9
cl_kmc <- kmeans(cl[,2:3], centers=3)
cl_kmc
#code10
cl$cluster <- cl_kmc$cluster
head(cl)
#code11
plot(cl$food, cl$weight,
     col=c("red","blue","green")[cl$cluster])
#code12
library(cluster)
clusplot(cl[,2:3], cl$cluster, col.p = cl$cluster)

#test1
cllhm <- read.csv("csv_exam.csv", header = TRUE)
nor2 <- function(x) {
  return(x-min(x))/(max(x)-min(x))
}

mydataEx <- apply(cllhm[,3:5], 2, nor2)
mydataEx

#test2
lhmK <- kmeans(mydataEx, centers=3)
lhmK$cluster
lhmK$centers

#test3
cllhm$cluster <- lhmK$cluster
head(cllhm)

#test4
library(cluster)
clusplot(cllhm,cllhm$cluster, color=TRUE, 
         shade=TRUE, labels=2, lines=0)
#test5
favoritecsvlhm <- read.csv("2025_favorite.csv",
                        header = TRUE)
lhmF <- kmeans(favoritecsvlhm[,3:7],3)
lhmF
lhmF$cluster
lhmF$centers
#test6
favoritecsvlhm$cluster<-lhmF$cluster
head(favoritecsvlhm)
#test7
library(cluster)
clusplot(favoritecsvlhm, 
         favoritecsvlhm$cluster,
         color=TRUE, shade=FALSE, labels=2, lines=1)