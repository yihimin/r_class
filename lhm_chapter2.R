#코드1
d <- c(1,4,3,7,8)
2*d
d-5
3*d+4

#코드2
x <- c(1,2,3)
y <- c(4,5,6)
x+y
x*y
z <- x+y
z

#코드3
d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d,decreasing = FALSE)
sort(d,decreasing = TRUE)

v1 <-median(d)
v2 <- sum(d)/length(d)
v2

#code4
d <- c(1,2,3,4,5,6,7,8,9)
d>=5
d[d>5]
sum(d>5)
sum(d[d>5])
d==5

condi <- d > 5 & d < 8
d[condi]

#code5
my.info <- list(name= 'Tom', age=60, status=TRUE)
my.info
my.info[[1]]
my.info$name
my.info$status

#code6
my_list <- list(name = "John", age=25, scores = c(88,92,95))

print(my_list$name)
print(my_list$age)
print(my_list$scores)

#code7
bt <- c('A','B','B','O','AB','A')
bt.new <- factor(bt)
bt
bt.new
levels(bt.new)

#code8
colors <- factor(c("red","blue","green","red","blue"))
print(colors)
levels(colors)
table(colors)

#code9
z <- matrix(1:20, nrow=4, ncol=5)
z

#code10
z2 <- matrix(1:20, nrow=4, ncol=5, byrow=T)
z2

#code11
x <- c(1:4)
y <- c(5:8)
z <- matrix(1:20, nrow=4, ncol=5)

m1 <- cbind(x,y)
m1
m2 <- rbind(x,y)
m2
m3 <- rbind(m2,x)
m3
m4 <- cbind(z,x)
m4

#code12
z <- matrix(1:20, nrow=4, ncol=5)
z

z[2,3]
z[1,4]
z[2,]
z[,4]

#code13
z <- matrix(1:20, nrow=4, ncol=5)
z

z[2,1:3]
z[1,c(1,2,4)]
z[1:2,]
z[,c(1,4)]

#code14
score <- matrix(c(90,85,69,78,
                  85,96,49,95,
                  90,80,70,60),
                nrow=4,ncol=3)
score
rownames(score) <- c('John', 'Tom', 'Mark','Jane')
colnames(score) <- c('English','Math','Science')
score

#code15
score['John','Math']
score['Tom',c('Math','Science')]
score['Mark']
score[,'English']
rownames(score)
colnames(score)
colnames(score)[2]

#code16
city <- c("Seoul","Tokyo","Washington")
rank <- c(1,3,2)
city.info <- data.frame(city,rank)
city.info

#code17
iris[,c(1:2)]
iris[,c(1,3,5)]
iris[,c("Sepal.Length","Species")]
iris[1:5,]
iris[1:5,c(1,3)]

#test1
d1 <- c(1:50)
d2 <- c(51:100)
d1
d2
length(d2)
sum(d1, d2)
max(d2)
min(d2)
sort(d1, decreasing = TRUE)

#test2
v1 <- c(51:90)
v1
v1[v1<60]
length(v1[v1<70])
sum(v1[v1>65])
v1[v1>60&v1<73]

#test3
a <- c('Korea','Japan','China','Korea')
f <- factor(a)
f
f[4]
levels(f)

#test4
people<-list(name='Bill',age=20, gender='M', student=TRUE, day='Mon')
people

#test5
z1 <- matrix(12:1, nrow=3, ncol=4, byrow=TRUE)
z1
z2 <- matrix(20:23, nrow=1)
z2
z3<- rbind(z1,z2)
z3

#test6
name <-c("Tom","Jane","Nick")
height <-c(180, 160, 175)
student <-c(TRUE, TRUE,FALSE)
human <- data.frame(name, height, student)
human

#test7
irislhm <- iris[c(1:5), ]
irislhm
