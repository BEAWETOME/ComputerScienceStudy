#데이터 조합(시험에서 OX정도)
combn(1:5,3) 
x = c("red","green","blue","black","white")
com <- combn(x,2)
com
for(i in 1:ncol(com)) {
  cat(com[,i], "\n")
}

#집계(aggregate)
#FUN=mean:각자들(그룹화된 대상들)에 대한 평균값 / 함수 sd, sum 등등
#by=list(~):그룹화 대상(자동)
#by=list(품종=iris$Species) 으로 하면 그룹 열 이름을 지정 가능
agg <- aggregate(iris[,-5],by=list(iris$Species),FUN=mean)
agg

#mtcars 데이터셋에서 각 변수의 최댓값 출력
head(mtcars)
agg <- aggregate(mtcars, by=list(cyl=mtcars$cyl,vs=mtcars$vs),FUN=max)
agg

#데이터 집계와 병합
x <- data.frame(name=c("a","b","c"), math=c(90,80,40))
y <- data.frame(name=c("a","b","d"), korean=c(75,60,90))

z <- merge(x,y, by=c("name")) #교집합
z

merge(x,y, all.x=T) #x기준
merge(x,y, all.y=T) #y기준
merge(x,y, all=T) #모두표시

x <- data.frame(name=c("a","b","c"), math=c(90,80,40))
y <- data.frame(sname=c("a","b","d"), korean=c(75,60,90))
merge(x,y, by.x=c("name"), by.y=c("sname"))

#<<<treemap 패키지 설치>>>
#데이터 시각화(index,vSize,vColor가 핵심)
library(treemap)
data(GNI2014) 
head(GNI2014) 
treemap(GNI2014,
        index=c("continent","iso3"), 
        vSize="population", 
        vColor="GNI", 
        type="value", 
        bg.labels="yellow",
        title="World's GNI") 

library(treemap) 
st <- data.frame(state.x77) 
st <- data.frame(st, stname=rownames(st)) 
treemap(st,
        index=c("stname"), 
        vSize="Area", 
        vColor="Income", 
        type="value", 
        title="USA states area and income" ) 
#버블차트 + 문자 표시(text는 단독으로 사용 불가능,여기있느 코드외에 추가적인 코드는 필수X)
st <- data.frame(state.x77) 
symbols(st$Illiteracy, st$Murder, 
        circles=st$Population, 
        inches=0.3)
text(st$Illiteracy, st$Murder,
     rownames(st))

#모자이크플롯(시험에서 OX정도)
head(mtcars)
mosaicplot(~gear+vs, data = mtcars, color=TRUE,main ="Gear and Vs")

#<<<ggplot2 패키지 설치>>>> color(테두리) 와 fill(채우기)의 차이/이게 data or optional 부분 중 어느 
#부분에 등장하는지 구분
#ggplot() 핵심/ 그 이후 geom_###() + 는 옵션
library(ggplot2)
month <- c(1,2,3,4,5,6)
rain <- c(55,50,45,50,60,70)
df <- data.frame(month,rain) #데이터
df
ggplot(df, aes(x=month,y=rain)) +
  geom_bar(stat="identity", width=0.7, fill="steelblue")

#히스토그램 작성
library(ggplot2)
ggplot(iris, aes(x=Petal.Length)) +
  geom_histogram(binwidth=0.5)

#그룹별 히스토그램 작성
library(ggplot2)
ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) +
  geom_histogram(binwidth = 0.5, position="dodge") +
  theme(legend.position="top")

#산점도 작성
library(ggplot2)
ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width)) +
  geom_point( )

#그룹별 산점도 작성 
#산점도에서 점은 colour로 색 변경(fill아님)
#colour = color
library(ggplot2)
ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width,color=Species)) +
  geom_point(size=3) +
  ggtitle("꽃잎의 길이와 폭") +
  theme(plot.title = element_text(size=25, face="bold", colour="steelblue"))

#상자그림 작성
library(ggplot2)
ggplot(data=iris, aes(y=Petal.Length)) +
  geom_boxplot(fill="yellow") 

#그룹별 상자그림 작성
library(ggplot2)
ggplot(data=iris, aes(y=Petal.Length, fill=Species)) +
  geom_boxplot( ) 

#선그래프 작성
#aes(x=year,y=cnt) = aes(year,cnt) 같음!
library(ggplot2)
year <- 1937:1960
cnt <- as.vector(airmiles)
df <- data.frame(year,cnt)
head(df)

ggplot(data=df, aes(x=year,y=cnt)) + 
  geom_line(col="red")




#차원축소 ~~~~~ 