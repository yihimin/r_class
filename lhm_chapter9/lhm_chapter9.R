#1
install.packages("readr")
library(readr)
rev <- read_delim("reviewlhm.txt", delim="\t", 
                  col_names=c("word","score"))
rev
#2
install.packages("SentimentAnalysis")
library(SentimentAnalysis)
rev$score <- as.numeric(as.character(rev$score))
sentdic <- SentimentDictionaryWeighted(words = rev$word, score = rev$score)
sentdic

#3
sentdic <- SentimentDictionary(rev$word[rev$score>0],
                               rev$word[rev$score<0])
sentdic

#4
txt <- readLines("stestlhm.txt", encoding = "UTF-8")
txt

#5
txt_2 <- gsub("\\.", "", txt)
txt_2

#6
install.packages("tm")
library(tm)

co_txt <- Corpus(VectorSource(txt_2))
inspect(co_txt)

#7
dtm_txt <- DocumentTermMatrix(co_txt)
inspect(dtm_txt[1,])
inspect(dtm_txt[2,])
inspect(dtm_txt[4,])

#8
res <- analyzeSentiment(dtm_txt, language = "korean",
                        rules=list("sentiment"=list(ruleSentiment, sentdic)))

head(res)

#9
res$pn <- ifelse(res$sentiment>0, "Positive",
                 ifelse(res$sentiment==0, "Neutral",
                        "Negative"))
res

#10
pie(table(res$pn),main = "이희민 오늘 하루에 대한 평가")

#code1
revlhm <- read_delim("review_dict.txt",
                     delim = "\t",
                     col_names = c("word", "score"))
revlhm

#code2
revlhm$score <- as.numeric(as.character(revlhm$score))
sentdiclhm <- SentimentDictionaryWeighted(words = revlhm$word, 
                                          scores = revlhm$score)
sentdiclhm

#code3
sentdiclhm <- SentimentDictionary(revlhm$word[revlhm$score>0],
                                  revlhm$word[revlhm$score<0])

sentdiclhm

#code4
txtlhm <- readLines("crawling.txt", encoding = "UTF-8")
head(txtlhm)

#code5
txtlhm_2 <- gsub("\\.","",txtlhm)
head(txtlhm_2)

#code6
co_txtlhm <- Corpus(VectorSource(txtlhm_2))
inspect(co_txtlhm)

#code7
dtm_txtlhm <- DocumentTermMatrix(co_txtlhm)
inspect(dtm_txtlhm)

#code8
reslhm <- analyzeSentiment(dtm_txtlhm,
                           language = "Korean",
                           rules=list("sentiment"=list(ruleSentiment, sentdiclhm)))
head(reslhm)
  
#code9
reslhm$pn <- ifelse(reslhm$sentiment>0,
                    "Positive", ifelse(reslhm$sentiment==0,
                                       "Neutral", "Negative"))
head(reslhm)

#code10
pie(table(reslhm$pn),main = "이희민 생닭 판매 고객 리뷰 감성 분석 결과")
