#basic code1
score <- matrix(c(90, 85, 69,
                  65, 96, 49), nrow = 2, ncol=3,byrow =T)
rownames(score) <- c('J1', 'T1')
colnames(score) <- c('E1','M1','S1')
score

iris[,c(1,3,5)]
iris[,c("Sepal.Length", "Species")]

#basic code2
dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
head(iris)
tail(iris)

#basic code3
str(iris)
levels(iris[,5])
table(iris[,"Species"])

#basic code4
colSums(iris[,c(1,2)])
colMeans(iris[c(1,2),c(1,2)])
rowMeans(iris[c(1,2),c(1,2)])

#basic code5
z <- matrix(1:8, nrow=2, ncol=4)
z
t(z)

#basic code6
IR.1 <- subset(iris, Species=="setosa")
head(IR.1)
IR.2 <- subset(iris, Sepal.Length>5.0 & Sepal.Width > 4.0)
tail(IR.2)

#basic code7
class(state.x77)
is.matrix(state.x77)
is.data.frame(state.x77)

#basic code8
st <- data.frame(state.x77[1:2, 1:2])
head(st)
class(st)

iris.m <- as.matrix(iris[1:2,1:2])
head(iris.m)
class(iris.m)

#basic code9
air <- read.csv("lhm.csv", header=T)
head(air)

#code1
z <- matrix(1:10, nrow=2, ncol=5, byrow=T)
z

z[2,3]
z[1,c(2,4)]
z[2,]
z[,c(2,3)]

#code2
score <- matrix(c(90,85,69,
                  85,96,49,
                  90,80,70),
                nrow=3, ncol=3)

score
rownames(score) <- c('J1','T1','M1')
colnames(score) <- c('E1','M1','S1')
score

#code3
score <- matrix(c(90,85,69,
                  85,96,49,
                  90,80,70),
                nrow=3, ncol=3, byrow=T)
score
rownames(score) <-c('J1','T1','M2')
colnames(score) <-c('E1','M1','S1')
score

#code4
iris[,c(2,3)]
iris[,c(1,3,5)]
iris[,c("Sepal.Length","Species")]
iris[2:5,]
iris[1:2,c(1,3)]

#code5
dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
head(iris)
tail(iris)

#code6
str(iris)
iris[,5]
table(iris[,"Species"])

#code7
colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

#code8
z <- matrix(1:20, nrow=4, ncol=5)
z
t(z)

#code9
IR.1 <- subset(iris,Species == "setosa")
IR.1
IR.2 <- subset(iris,Sepal.Length>5.0 & Sepal.Width>4.0)
IR.2
IR.2[,c(2,4)]

#code10
a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b

2*a
a+b

#code11
class(iris)
class(state.x77)
is.matrix(iris)
is.data.frame(iris)
is.matrix(state.x77)
is.data.frame(state.x77)

#code12
st <- data.frame(state.x77)
head(st)
class(st)

iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)

#code13
iris[,"Species"]
iris[,5]
iris["Species"]
iris[5]
iris$Species

#code14
lhmk <- read.csv("lhmk.csv",header = T)
head(lhmk)

#code15
my.iris <- subset(iris,Species=='setosa')
write.csv(my.iris, "my_iris.csv", row.names=F)

#test1
dim(score)
nrow(score)
ncol(score)
colnames(score)
head(score)
tail(score)

#test2
score1 <- matrix(c(2,2,2,4,4,4), nrow=2, ncol=3, byrow=T)
colSums(score1)
colMeans(score1)
rowSums(score1)
rowMeans(score1)

#test3
k1 <- matrix(1:8, nrow=2, ncol=4)
t(k1)

#test4
alpha <- matrix(c('A','B','A','B'), nrow=2, ncol=2, byrow=T)
rownames(alpha) <- c('C1','D1')
colnames(alpha) <- c('A1','B1')
alpha

alpha1 <- as.data.frame(alpha)
A1 <- subset(alpha1, B1 == 'B')

#test5
class(alpha1)
is.matrix(alpha1)
is.data.frame(alpha1)

st <- data.frame(score)
is.matrix(st)
is.data.frame(st)

s.m <- as.matrix(alpha1)
is.matrix(s.m)
is.data.frame(s.m)

#test6
stlhm <- read.csv("stlhm.csv", header = T)
stlhm
colnames(stlhm)
rownames(stlhm)
nrow(stlhm)
ncol(stlhm)
str(stlhm)
rowSums(stlhm[ , c(2,4)])
rowMeans(stlhm[ , c(2,4)])
colSums(stlhm[ , c(2,4)])
colMeans(stlhm[ , c(2,4)])

#test7
name <- c("Tom", "Jane", "Nick")
age <- c(20, 23, 26)
gender <- c("M", "F", "M")
height <- c(180, 160, 175)
student <- c(TRUE, TRUE, FALSE)

human <- data.frame(name, age, gender, height, student)

str(human)

mean(human$age)
mean(human$height)

colnames(human[ , -4])

table(human$gender)

