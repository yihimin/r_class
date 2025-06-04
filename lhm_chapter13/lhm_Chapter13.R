# csv 파일 불러오기
df <- read.csv("Korea Income and Welfare.csv", header = TRUE)

# 상위 6행 미리보기
head(df)

# 나이 계산
df$age <- 2025 - df$year_born

# 필요한 변수만 선택
mydata <- df[, c("income", "gender", "education_level", "age")]


# 결측치 제거
mydata <- na.omit(mydata)

#정규화
std <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

mydata_scaled <- apply(mydata, 2, std)

#K-means 군집 분석
set.seed(42)  # 결과 재현성 확보
fit <- kmeans(mydata_scaled, centers = 3)

# 클러스터 결과 붙이기
df$cluster <- fit$cluster

#클러스터별 특성 요약
aggregate(df[, c("income", "age", "education_level", "gender")],
          by = list(Cluster = df$cluster),
          FUN = mean)

#시각화
library(cluster)
clusplot(mydata_scaled, fit$cluster,
         color = TRUE, shade = TRUE, labels = 1, lines = 0)

