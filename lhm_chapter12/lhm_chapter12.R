#basic1
dataStudy <- data.frame(
  x1= c(1,3.3,2.2,4.8),
  x2= c(8.2,7.7,5.5,6.5),
  y =c(55,75,65,85)
)

dataStudy
#basic2
mod1 <- lm(y~x1+x2,data=dataStudy)
mod1
#basic3
coef(mod1)[1]
coef(mod1)[2]
coef(mod1)[3]
#basic4
b <- coef(mod1)[1]
w1 <- coef(mod1)[2]
w2 <- coef(mod1)[3]

x1 <- 2
x2 <- 7
y <- w1*x1+w2*x2+b
y
#basic5
datasmile <- data.frame(
  a=c(0.5,1.2,2.1,0.7,1.5,2.8),
  b=c(2.3,1.1,0.9,1.4,2.0,1.7),
  c=c(0.4,1.5,2.8,0.6,1.1,2.2),
  d=c(1.7,2.2,0.6,1.8,1.3,0.9),
  type=c(0,1,2,1,0,2)
)
#basic6
modS <- glm(type~a+b+c+d,data=datasmile)
modS
#basic7
unknown<-data.frame(rbind(c(1,2,1,1)))
unknown
#basic8
names(unknown) <- names(datasmile[1:4])
unknown
#basic9
pred<-predict(modS, unknown)
pred
#basic10
unknown$type <- round(pred, 0)
unknown

#code1
w<-read.csv("chick.csv",header=TRUE)
w_n<-w[,2:5]
head(w_n)
#code2
cor(w_n)
install.packages("corrplot")
library(corrplot)
corrplot(cor(w_n),method="number")
#code3
Mw_n<-w_n[,c(1,2,4)]
head(Mw_n)
#code4
plot(Mw_n,col="red")
#code5
MW_nmodel <- lm(weight~egg_weight+food,Mw_n)
MW_nmodel
#code6
coef(MW_nmodel)[1]
coef(MW_nmodel)[2]
coef(MW_nmodel)[3]
#code7
b <- coef(MW_nmodel)[1]
W1 <- coef(MW_nmodel)[2]
W2 <- coef(MW_nmodel)[3]
egg_weight <- 71
food <- 15
weight <- W1*egg_weight+W2*food+b
weight
#code8
iris.new <- iris
iris.new$Species <- as.integer(iris.new$Species)
head(iris.new)
#code9
mod.iris <- glm(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, 
                data=iris.new)
mod.iris
#code10
unknown <- data.frame(rbind(c(5.1,3.5,1.4,0.2)))
unknown
#code11
names(unknown) <- names(iris)[1:4]
unknown
#code12
pred <- predict(mod.iris, unknown)
pred
#code13
round(pred,0)
#code14
unknown$Species<-round(pred,0)
unknown