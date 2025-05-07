#code1
install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)
#code2
dataset_min <- list(
  c("Pizza", "Soda"),
  c("Pizza", "Chicken"),
  c("Chicken", "Soda"),
  c("Pizza", "Soda")
)

trans_min <- as(dataset_min, "transactions")
#code3
toLongFormat(trans_min)
#code4
itemFrequencyPlot(trans_min, topN = 3, type="absolute", col="pink")
#code5
rules_min <- apriori(trans_min, parameter = list(sup = 0.4, conf = 0.7))
#code6
inspect(rules_min)
#code7
plot(rules_min, method ="graph")

#basic 2
trans <- read.transactions("lhm.csv", format = "single", 
                           header = T, cols=c(1,2), sep=",",
                           rm.duplicates = T, encoding = "UTF-8")
trans

#basic3
toLongFormat(trans)

#basic4
itemFrequencyPlot(trans, topN=3, type="absolute",
                  xlab ="상품명", ylab="절대 판매빈도",
                  main="판매량 많은 상품", col="green")
#basic5
rules <- apriori(trans, parameter = list(supp = 0.2, conf =0.7))
rules

inspect(rules[1:10])

#basic6
rules.sort <- sort(rules, by='support', decreasing = T)
inspect(rules.sort[1:10])

#basic7
rules.lift2 <- subset(rules, subset = (lift >= 2))
rules.lift2.sort <- sort(rules.lift2, by = "lift",
                         decreasing = TRUE)
inspect(rules.lift2.sort[1:6])

#basic8
plot(rules.lift2.sort, method="graph")

#basic9
rules_df <- as(rules.sort, "data.frame")
write.csv(rules_df, file="lhm_rules.csv",
          quote=TRUE, row.names = FALSE,
          fileEncoding = "UTF-8")
write.csv(rules_df, file ="lhm_rules_R.csv",
          quote=TRUE, row.names = FALSE,
          fileEncoding = "CP949")

#test1
transF <- read.transactions("LHM_F.csv",
                            format="single",
                            header=T,
                            cols =c(1, 2),
                            sep = ",", 
                            rm.duplicates = T,
                            encoding = "UTF-8")

transF
summary(transF)
#test2
# 상품 판매 빈도 상위 3개 시각화
itemFrequencyPlot(transF, 
                  topN = 3, 
                  type = "absolute", 
                  xlab = "상품명", 
                  ylab = "전체 판매빈도", 
                  main = "판매량 많은 상품", 
                  col = "green")

#연관규칙 찾기 (지지도 0.2 이상, 신뢰도 0.4 이상)
rulesF <- apriori(transF, parameter = list(supp = 0.2, conf = 0.4))

#앞쪽 6개 규칙 출력
inspect(rulesF[1:6])

#test3
# 신뢰도 상위 5개 규칙 출력
rulesF.sort <- sort(rulesF, by = "confidence", decreasing = TRUE)
inspect(rulesF.sort[1:5])

# 연관 규칙 시각화 (그래프 네트워크 형태)
plot(rulesF.sort, method = "graph")

#test4
# 연관규칙을 데이터프레임으로 변환
rulesF.df <- as(rulesF.sort, "data.frame")

# 한글 UTF-8로 저장 (기본)
write.csv(rulesF.df, 
          file = "lhmF_rules.csv", 
          quote = TRUE, 
          row.names = FALSE, 
          fileEncoding = "UTF-8")

# 만약 열었을 때 한글이 깨질 경우 → CP949로 저장
write.csv(rulesF.df, 
          file = "lhmF_rules_R.csv", 
          quote = TRUE, 
          row.names = FALSE, 
          fileEncoding = "CP949")
