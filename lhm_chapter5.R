#basic1
f.local <- c('Seoul', 'Busan', 'Seoul', 'Incheon', 'Busan')
f.local
table(f.local)

#basic2
f.local <- c('Seoul', 'Busan', 'Seoul', 'Incheon', 'Busan')
ds <- table(f.local)
ds
barplot(ds, main='지역분포')

#basic3
ds <- table(f.local)
ds
pie(ds, main='지역분포')

#basic4
weight <- c(2,3,4,5)
mean(weight)
median(weight)

weight.heavy <-c(weight, 10)
mean(weight.heavy)
median(weight.heavy)

#basic5
mydata <- c(1,2,3,4)
quantile(mydata)
quantile(mydata, (0:10)/10)

#basic6
score <- c(45.5, 46.1, 50.6, 71.3, 55.2, 67.1)
hist(score,
     main="수학점수",
     xlab="점수",
     ylab="빈도수",
     border="blue",
     col="green",
     las=2)

#basic7
score <- c(10, 50, 50, 60, 70, 80, 100)
quantile(score)
boxplot(score, main="수학점수")

#basic8
wt <- c(10,20,30,40,50)
mpg <- c(50, 52.1, 53.4, 55.1, 60)
plot(wt, mpg,
     main ="용돈-몸무게 그래프",
     xlab="용돈",
     ylab="몸무게",
     col="red",
     pch=19)

#basic9
wt <- c(10,20,30,40,50)
mpg <- c(50, 52.1, 53.4, 55.1, 60)
sp <- c(8,8,9,9,9)
st <- data.frame(wt,mpg,sp)
pairs(st, main="상관 그래프")

#basic10
day = c(1:7)
sleeping = c(6,7,8,5,6,7,8)
plot(day,
     sleeping,
     main="요일별 잠자는 시간 통계",
     type="l",
     lty=2,
     lwd=2,
     xlab="day",
     ylab="sleeping time")

#code1
favorite <- c('WINTER', 'SUMMER', 'SPRING',
              'SUMMER','SUMMER','FALL','FALL', 
              'SUMMER', 'SPRING', 'SPRING')
favorite
table(favorite)
table(favorite)/length(favorite)

#code2
ds <- table(favorite)
ds
barplot(ds, main="favorite season")

#code3
ds <- table(favorite)
ds
pie(ds, main="favorite season")

#code4
favorite.color <- c(2,3,2,1,1,
                    2,2,1,3,2,
                    1,3,2,1,2)
ds <- table(favorite.color)
ds
colors <- c('green', 'red', 'blue')
names(ds) <- colors
ds
barplot(ds, main='favorite color', col=colors)
pie(ds, main='favorite color', col=colors)

#code5
weight <- c(60,62,64,65,68,69)
weight.heavy <- c(weight, 120)
weight
weight.heavy

mean(weight)
mean(weight.heavy)

median(weight)
median(weight.heavy)

#code6
mydata <- c(60,62,64,65,68,69,120)
quantile(mydata)
quantile(mydata, (0:10)/10)

#code7
head(cars)
dist <- cars[,2]
hist(dist,
     main="Histogram for 제동거리",
     xlab = "제동거리",
     ylab = "빈도수",
     border="blue",
     col="green",
     las=2)

#code8
dist <- cars[,2]
boxplot(dist, main="자동차 제동거리")

#code9
wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg,
     main ="중량-연비 그래프",
     xlab="중량",
     ylab="연비(MPG)",
     col="red",
     pch=19)

#code10
vars <- c("mpg","disp","drat","wt")
target <- mtcars[,vars]
head(target)
pairs(target,
      main="Multi Plots")

#code11
month <- c(1:12) 

late1 <- c(5,8,7,9,4,6,12,13,6,6,6,4)    
late2 <- c(4,6,5,8,7,8,10,11,6.5,7,5,3) 

plot(month,         # x축: 월(month)
     late1,         # y축: late1 데이터
     main = "Late Students",  # 제목
     type = "b",    # 'b'는 선+점 둘 다 표시
     lty = 1,       # 선 스타일 (1: 실선)
     col = "red",   # 선 색: 빨간색
     xlab = "Month",         # x축 레이블
     ylab = "Late cnt"       # y축 레이블
)

#code12
lines(month,        # x축: 월
      late2,        # y축: late2 데이터
      type = "o",   # 'o'는 점 중심 (circle)
      col = "blue"  # 파란색 선
)


#test1
result <- c('P','P','F','P','F','P','F','P','P','F')
table(result)
barplot(table(result), main="이희민")
pie(table(result), main="이희민")

#test2
season <- c('여름','겨울','봄','가을',
            '여름','가을','겨울','여름','여름',
            '가을')
table(season)
barplot(table(season), main="이희민 선호계절")
pie(table(season), main="이희민 선호계절")

#test3
score <- c(90,85,73,80,85,65,78,50,68,96)
names(score) <-c('KOR','ENG','ATH','HIST','SOC','MUSIC',
                 'BIO','EARTH','PHY','ART')
score
mean(score)
median(score)
boxplot(score)
hist(score, main="이희민 성적",
     xlab ="Score", ylab="Frequency",
     col="purple")

#test4
#test5
#test6
