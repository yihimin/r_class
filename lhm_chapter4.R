#basic1
job.type <- 'A'
if(job.type == 'B') {
  bonus <- 200
} else {
  bonus <- 100
}
print(bonus)

#basic2
a <- 10
b <- 20
c <- ifelse(a==b, a,b)
print(c)

#basic3
for(i in 1:5) {
  print('*')
}

for(i in 1:5){
  cat('*')
}

#basic4
sum <- 0
i <- 1
while(i<=5) {
  print(i)
}

#basic5
for(i in 1:5){
  if(i>=2) break
  print(i)
}

for(i in 1:10){
  if(i%%2==0) next
  print(i)
}

#basic6
mapply = matrix(1:6, nrow=2, ncol=3)
mapply
apply(mapply, 1, max)
apply(mapply, 2, max)

#basic7
mymax <- function(x,y) {
  num.max <- x
  if(y>x) {
    num.max <- y
  }
  return(num.max)
}

mymax(2,3)

#basic8
score <- c(71,88,84)
which(score==88)
which(score>=70)
which.max(score)
which.min(score)

#code1
job.type <- 'B'
bonus <- 100
if(job.type == 'A') {
  bonus <- 200
}
print(bonus)

#code2
score <- 85

if(score > 90) {
  grade <- 'A'
} else if (score > 80) {
  grade <- 'B'
} else {
  grade <- 'F'
}
print(grade)

#code3
a <- 10
b <- 20
if(a>5 & b>5){
  print(a+b)
}
if(a>5 | b>30){
  print(a*b)
}

#code4
a <- 10
b <- 20

if(a>b) {
  c <- a
} else {
  c <- b
}
print(c)

a <- 10
b <- 20

c <- ifelse(a>b, a, b)
print(c)

#code5
for(i in 6:10){
  print(i)
}

#code6
for(i in 1:9){
  cat('2 *', i,'=', 2*i, '\n')
}

#code7
for(i in 1:20) {
  if(i%%2==0) {
    print(i)
  }
}

#code8
sum <- 0
for(i in 1:100){
  sum <- sum + i
}
print(sum)

#code9
sum <- 0
for(i in 1:10) {
  sum <- sum + i
  if(i>=5) break
}
sum

#code10
sum <- 0 
for(i in 1:10) {
  if(i%%2==0) next
  sum <- sum + i
}
sum

#code11
apply(iris[,1:4], 1, mean)
apply(iris[,1:4], 2, mean)

#code12
mymax <- function(x,y){
  result <- max(x,y)
  return(result)
}

a <- mymax(20,15)
b <- mymax(31,45)
print(a+b)

#code13
score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
idx <- which(score<=60)
score[idx] <- 61
score

#test1
gender.type <- 'M'
if(gender.type == 'F'){
  g <-'여성'
} else {
  g <-'남성'
}
print(g)

#test2
gender.type <- 'M'
g <- ifelse(g<-'F','여성','남성')
print(g)

#test3
for(i in 1:5)
{
  for(j in 1:i)
    cat('*')
  cat('\n')
}

#test4
i <- 1
while(i<=5){
  j<-1
  while(j<=i){
    cat('*')
    j<-j+1
  }
  cat('\n')
  i<- i+1
}

#test5
for(i in 1:5){
  if(i%%4==0) break
  print(i)
}

for(i in 1:10){
  if(i%%3!=0) next
  print(i)
}

#test6
msleep = data.frame(study = c(1,2,3), sleeping=c(7,8,9))
msleep
apply(msleep,2,sum)

#test7
namef <- function(name1)
{
  for(i in 1:5)
  {
    print(name1)
  }
}

namef('ksj')

#test8
value1<-c(100,200,300)
which(value1==300)
which.max(value1)
which.min(value1)

#test9
for(i in 1:9) {
  cat('9*',i,'=',9 * i,'\n')
}

#test10
i <- 1
while(i<10){
  cat('8*',i,'=',8*i,'\n')
  i <- i+1
}

#test11
for(i in 1:100){
  result <- ifelse(i%%3==0,'*',i)
  cat(result,'')
}