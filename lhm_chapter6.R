#basic1
z <- c(1,2,3,NA)
is.na(z)
sum(is.na(z))

z[is.na(z)] <- 0 #[인덱스]에 채우기
z
#basic2
x <- c(NA,2,3)
y <- c(4,5,6)
xy <- data.frame(x,y)
xy

col_na <- function(y) {
  return(sum(is.na(y)))
}
na_count <- apply(xy,2,FUN=col_na) #xy를 세로로(2) 썬다.결측치 든 애들만.
na_count
#basic3
xy
xy[!complete.cases(xy),] #완벽하지 않은 행만 모아(결측치)
xy.rm <- xy[complete.cases(xy),] # 완벽한 행만 뽑아 출력
xy.rm
#basic4
  # 간단한 키 데이터 생성 (9명은 보통 키, 1명은 매우 큰 키)
height <- c(165, 168, 170, 172, 175, 178, 180, 182, 185, 210)
  # 데이터프레임 생성
test1 <- data.frame(height)

  # 상자그림(Boxplot) 생성
boxplot(test1$height,
        main = "키 분포",
        ylab = "키(cm)")
  # 특이값(outlier) 추출
out.val <- boxplot.stats(test1$height)$out
out.val  # 특이값 출력

#basic5
test2 <- test1
test2$height[test2$height%in%out.val] <- NA
test2

#basic6
  # iris 데이터셋을 품종(Species)별로 분리
sp <- split(iris, iris$Species)
sp$setosa # setosa 품종 데이터만 출력

#basic7
  # 1부터 10까지 숫자 벡터 생성
x <- c(1:10)
  # 중복 없이(random), 3개를 샘플링
y <- sample(x, size = 3, replace = FALSE)
y # 결과 출력

#basic8
  # 이름(name)과 수학 점수(math)로 구성된 데이터프레임
x <- data.frame(name = c("a", "b", "a", "b"),
                math = c(90, 80, 40, 40))
  # name별로 math 점수의 평균을 계산
agg <- aggregate(math ~ name, data = x, FUN = mean)
agg # 결과 출력

#basic9
  # 첫 번째 데이터프레임: 수학 점수
x <- data.frame(name = c("a", "b", "c"),
                math = c(90, 80, 40))
  # 두 번째 데이터프레임: 국어 점수
y <- data.frame(name = c("a", "b", "c"),
                korean = c(75, 60, 90))
  # name을 기준으로 병합 (inner join)
z <- merge(x, y, by = c("name"))
z # 결과 출력

#code1
z2 <- c(1,2,4,NA,5,NA,8)
sum(is.na(z2))
#code2
z2 <- c(5,8,1,NA,3,NA,7)
sum(is.na(z2))
#code3
x <- c(1,2,3)
y <- c(4,5,6)
y[3] <- NA
xy1 <- data.frame(x,y)

col_na <- function(y) {
  return(sum(is.na(y)))
}

na_count <- apply(xy1,1,FUN=col_na)
na_count
#code4
head(xy1)
xy1[!complete.cases(xy1),]
y_c <- xy1[complete.cases(xy1),]
y_c
#code5
region_data <- data.frame(
  Region = c("A","B","C","D","E"),
  Area = c(120,350,200,180,1500),
  Population = c(80,120,75,95,300)
)

region_data
boxplot(region_data$Area)
boxplot.stats(region_data$Area)$out
#code6
out.val <- boxplot.stats(region_data$Area)$out
region_data$Area[region_data$Area%in%out.val] <- NA
head(region_data)
#code7
head(region_data)
newdata <- region_data$Area[!is.na(region_data$Area)]
head(newdata)
#code8
student_data <- data.frame(
  Name = c("Alex", "Brian", "Cindy", "David", "Emma","Frank"),
  Gender = c("M","M","F","M","F","M"),
  Score = c(85,92,78,64,91,75)
)

student_data
sp <- split(student_data, student_data$Gender)
head(sp$F)
head(sp$M)
#code9
x <- c(1:100)
y <- sample(x,size=10,replace=FALSE)
y
#code10
sample(1:20, size=5, replace = FALSE)
sample(1:20, size=5, replace = TRUE)
sample(1:20, size=5, replace = TRUE)
#code11
simple_data <- data.frame(
  Group = c("A","A","B","B"),
  Val1 = c(5,7,10,14)
)

simple_data
agg <- aggregate(Val1 ~ Group, data=simple_data, FUN=sd)
agg
#code12
x <- data.frame(name=c("a","b","c"), math=c(90,80,40))
y <- data.frame(name=c("a","b","d"), korean=c(75,60,90))
x
y
z <- merge(x,y,by=c("name"))
#test1
x <- c(10,NA,30,NA)
y <- c(50,60,NA,80)
xy_m <- data.frame(x,y)
xy_m

col_na <- function(y) {
  return(sum(is.na(y)))
}

na_count <- apply(xy,1,FUN=col_na)
na_count
#test2
x <- c(10,20,NA,NA)
y <- c(10000,60,70,10)
z1 <- data.frame(x,y)
z1

sum(is.na(z1))

z1[!complete.cases(z1),]
z1.rm <- z1[complete.cases(z1)]
z1.rm
#test3
x <- c(10,20,10,20,30,40,70)
y <- c(100000000,60,70,10,5,10,20)
z.val <- data.frame(x, y)
z.val 
boxplot(z.val$y)
zval.out <- boxplot.stats(y)$out
zval.out

z.val$y[z.val$y%in%zval.out] <- NA
z.val
#test4
x <- data.frame(name=c("a","b","a","b"), math=c(90,80,40,40))
x
sp <- split(x, x$name)
sp$a
#test5
x <- c(1:100)
y <- sample(x, size = 10, replace = TRUE)
y
#test6
x <- data.frame(
  pageN = c(2, 5, 6, 2, 5),
  timeN = c(1, 2, 3, 4, 5),
  gender = c('M', 'F', 'M', 'F', 'M')
)

agg_page <- aggregate(pageN ~ gender, data = x, FUN = mean)
agg_time <- aggregate(timeN ~ gender, data = x, FUN = mean)
agg_page
agg_time

#test7
x <- data.frame(
  colorN = c("R", "B", "W", "Bl", "P"),
  pageN = c(2, 5, 6, 2, 5)
)

y <- data.frame(
  colorN = c("R", "B", "W", "Bl", "P"),
  timeN = c(1, 2, 3, 4, 5)
)
z <- merge(x, y, by = "colorN")
z
