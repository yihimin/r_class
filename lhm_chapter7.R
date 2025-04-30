#code2
install.packages("treemap")
library(treemap)
st <- data.frame(state.x77)
st <- data.frame(st, stname=rownames(st))

treemap(st,
        index=c("stname"),
        vSize = "Area",
        vColor = "Income",
        type = "value",
        title = "USA states area and income"
        )
#code3
st <- data.frame(state.x77) 

symbols(st$Illiteracy, st$Murder,
        circles = st$Population,
        inches = 0.3,
        fg = "white",
        bg = "lightgray",
        lwd = 1.5,
        xlab = "rate of Illiteracy",
        ylab = "crime(murder) rate",
        main = "Illiteracy and Crime")

text(st$Illiteracy, st$Murder,
     rownames(st),
     cex = 0.6,
     col = "brown")

#code4
install.packages("ggplot2")   
library(ggplot2)             

month <- c(1, 2, 3, 4, 5, 6)                  
rain <- c(55, 50, 45, 50, 60, 70)             
df <- data.frame(month, rain)               
df                                           

ggplot(df, aes(x = month, y = rain)) +      
  geom_bar(stat = "identity",             
           width = 0.7,                     
           fill = "steelblue")            

#code5
library(ggplot2)

ggplot(df, aes(x = month, y = rain)) +
  geom_bar(stat = "identity",          
           width = 0.7,               
           fill = "steelblue") +       
  ggtitle("월별 강수량") +            
  theme(plot.title = element_text(size = 25, 
                                  face = "bold", 
                                  colour = "steelblue")) +  
  labs(x = "월", y = "강수량") +       
  coord_flip()                         


#code6
library(ggplot2)

ggplot(iris, aes(x = Petal.Length)) +
  geom_histogram(binwidth = 0.5)


#code7
library(ggplot2)

ggplot(iris, aes(x = Sepal.Width, fill = Species, color = Species)) +
  geom_histogram(binwidth = 0.5, position = "dodge") +
  theme(legend.position = "top")

#code8
library(ggplot2)

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point()

#code9
library(ggplot2)

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 3) +
  ggtitle("꽃잎의 길이와 폭") +
  theme(plot.title = element_text(size = 25, face = "bold", colour = "steelblue"))

#code10
library(ggplot2)

ggplot(data = iris, aes(y = Petal.Length)) +
  geom_boxplot(fill = "yellow")

#code11
library(ggplot2)

ggplot(data = iris, aes(y = Petal.Length, fill = Species)) +
  geom_boxplot()

#code12
library(ggplot2)

head(airmiles)  # 데이터 구조 확인

year <- c(1937:1960)
cnt <- as.vector(airmiles)
df <- data.frame(year, cnt)

head(df)  # 변환된 데이터 확인

ggplot(data = df, aes(x = year, y = cnt)) +
  geom_line(col = "red")


#test1
library(treemap)

# 데이터 프레임 생성
f.data <- data.frame(
  fCategory = c('Beverages', 'Beverages', 'Snacks', 'Snacks'),
  fSubcategory = c('Coffee', 'Tea', 'Chips', 'Cookies'),
  fValue = c(50, 20, 50, 30)
)

f.data

# 트리맵 생성
treemap(f.data,
        index = c("fCategory", "fSubcategory"),
        vSize = "fValue",
        title = "디저트 판매량")

#test2
head(trees)
label <- c(1:31)

symbols(trees$Girth, trees$Height,
        circles = trees$Volume,
        inches = 0.5,
        fg = "white",
        bg = "blue",
        lwd = 1.5)

text(trees$Girth, trees$Height, 
     label,
     cex = 0.6,
     col = "brown")


#test3
library(ggplot2)

head(mtcars)

ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(fill = "green") +      
  ggtitle("실린더 수")       

#test4
library(ggplot2)

head(mtcars)

ggplot(mtcars, aes(x = mpg)) +      
  geom_histogram(binwidth = 5.0)      

#test5
library(ggplot2)
head(swiss[, c(1:3)])

ggplot(data = swiss, aes(x = Examination, y = Agriculture, color = Fertility)) +
  geom_point(size = 3) +
  ggtitle("입대시험 고득점자 비율과 농업인 비율")

#test6
library(ggplot2)
head(mtcars)

ggplot(data = mtcars, aes(y = mpg, fill = factor(mtcars$gear))) +
  geom_boxplot()

#test7
library(ggplot2)

year <- c(2015:2020)
accident <- c(232035, 220917, 216335, 217148, 229600, 209654)

df <- data.frame(year, accident)

ggplot(data = df, aes(x = year, y = accident)) +
  geom_line(col = "red")
