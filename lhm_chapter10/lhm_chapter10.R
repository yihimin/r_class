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

#code1
#code2
#code3
#code4
#code5
#code6
#code7
#code8
#code9
#code10
#code11
#code12

#test1
#test2
#test3
#test4
#test5
#test6
#test7