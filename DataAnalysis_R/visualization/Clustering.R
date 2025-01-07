#requestURL 만드는 준비
serviceURL <- "https://api.odcloud.kr/api/" 
operation <- "apnmOrg/v2/list"
page <- "?page=1"
perPage <- "&perPage=10"
serviceKey <- "&serviceKey=6OB3ojkdew6LUHJJXLnuL5piFdDpgWcujCUiHCAfzJZaSUMFosA2yLt%2FDWlcPHDmpkmA7fIIHHFydlWhCNH5rQ%3D%3D"
#requestURL 만드는 준비 끝

#소스코드 합치기 paste0(변수 순서대로 입력~) 
#requestURL 만들기 끝
requestUrl = paste0(serviceURL, operation, page, perPage, serviceKey) 
requestUrl

#패키지 설치 
install.packages("jsonlite") 
library( jsonlite) 

install.packages("httr") 
library(httr)


repos <- fromJSON(requestUrl) #연결 및 DataFrame으로의 변환
repos <- data.frame(repos) #자동으로 data.frame()하면서 정리됨
str(repos)
names(repos)

#CSV로 저장
write.csv(repos,"data.csv",row.names = TRUE)




#k-평균 군집화
mydata <- iris[,1:4]
fit <- kmeans(x=mydata,centers = 3)
fit
fit$cluster
fit$centers

install.packages("cluster")
library(cluster)
clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE,
         labels=2, lines=0)

subset(mydata, fit$cluster==2)

std <- function(X) { 
  return((X-min(X)) /(max(X)-min(X)))
}
mydata <- apply(iris[,1:4], 2, std) # 표준화된 데이터 준비
fit <- kmeans(x=mydata, centers=3) 
fit
