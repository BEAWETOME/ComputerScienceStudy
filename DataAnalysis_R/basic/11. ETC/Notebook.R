#벡터
x <- c(1, 2, 3) #숫자형
y <- c("a", "b", "c") #문자형
z <- c(T, T, F, T) #논리형
z2 <- c(TRUE, TRUE, FALSE, TRUE)
a <- c(1,2,3,4)
a[z]
#간격/반복
v1 <- seq(2,100,2)
v2 <- rep(1, times=10)
v3 <- rep(c(1,2,3), times=2)

#벡터 이름 지정
v4 <- c(90, 95, 86)
names(v4) <- c("A", "A+", "B+")
names(v4)
v4
#벡터에서 값 추출
v4[-c(1,3)]
v4["A"]
v4[c("A","B+")]
v4[2] <- 97
v4[c(1,3)] <- c(91,87)
#벡터 연산
v4*2
v5 <- c(5,10,15)
v4 + v5
sum(v5)
mean(v5) #평균
median(v5) #중앙값
max(1,49,29,50)
min(v5)
var(v5) #분산
sd(v5) #표준편차
sort(v5) #정렬(오름차순)
range(v5) #최소~최대(범위)
length(v5) #값 개수(길이)
#주의(매개변수 순서 유의)
sort(v4, decreasing = TRUE) #내림차순 정렬
sort(x=v4, decreasing = TRUE) 
#논리연산자
# A==B : A와 B가 같으면 TRUE


# A!=B : A와 B가 다르면 TRUE
# A & B : A와 B모두 TRUE일떄 TRUE
#벡터의 연산
v <- c(1,2,3,4,5,6,7,8,9)
v >= 5
v[4]
v[v>7]
v[v==4]
v[v==10]
v[v!=4]
sum(v)
sum(v>=5) #[ ~ ]구조가 아니라 인덱스화 X -> 논리연산 -> T=1,F=0 -> 0+0+0+0+1+1+1+1+1 = 5 출력
sum(v[v>=5]) #[ ~ ]는 인덱스화 시키는 거 -> 5+6+7+8+9 = 35 출력
condi <- v < 7 & v > 3 #condi에는 논리연산 결과값이 저장, 따라서 T&F의 값이 저장 = 조건을 변수에 저장
v[condi] # 조건에  맞는 값 출력
s <- c(90,95,100,92)
info <- list(name = "Tom", age =22, status = T, socore = s)
info
info$name
info[[1]]
bt <- c("A","B","B","O","AB","A")
bt.new <- factor(bt)
bt.new
bt[5]
bt.new[5]
levels(bt.new)
as.integer(bt.new)
z <- matrix(1:20, ncol = 5, nrow = 4)
z
x <- c(1:4)
y <- c(5:8)
z1 <- cbind(x,y)
z1
rownames(z1) <- c("A","B","C","D")
colnames(z1) <- c("T","F")
z1
z1["A",]
dim(z1)
ncol(z1)
nrow(z1)
colnames(z1) #열 이름 출력
rownames(z1) #행 이름 출력
head(z1) #앞 여섯 줄
tail(z1,10) #뒤 열 줄
iris.new <- iris
str(iris.new) # 요약 정보 보기
iris[,5] #모든행 5열
unique(iris[,5]) # 중복제거 이름 보기
table(iris[,"Species"]) #행 개수
#행 열 별 합계 및 평균
colSums(iris[,-5])
colMeans()
rowSums()
rowMeans()
t(v1) #행 열 바꾸기
#메트릭스와 데이터프레임 자료구조 확인
class(iris)
is.data.frame(iris)
is.matrix(iris)
zm <- data.frame(z)
zm
class(z)
zd <- as.matrix(zm)
class(zd)
iris[,"Species"]
iris["Species"]
z[5]
iris$Species
new.iris <- iris["Species"]
class(new.iris)
new2.iris <- iris[,"Species"]
class(new2.iris)
new2.iris
vvv <- c(1,2,3,4,5)
class(vvv)
for(i in 1:9) {
  cat('2 *',i,'=',2*i,'\n')
}
for(i in 1:9) {
  print('2 *',i,'=',2*i,'\n')
}

for(i in 1:20) {
  if(i%%2==0) {
    print(i)
  }
}

sum <- 0
for(i in 1:100) {
  sum <- sum + i
}
print(sum)
niris <- nrow(iris)
niris
mylabel <- c()
class(mylabel)
for(i in 1:niris) {
  if(iris$Petal.Length[i] <= 1.6) {
    mylabel[i] <- "L"
  } else if(iris$Petal.Length[i] >= 5.1) {
    mylabel[i] <- "H"
  } else {
    mylabel[i] <- "M"
  }
}
print(mylabel)
iris.data <- data.frame(iris$Petal.Length, mylabel)
iris.data
class(iris.data)
head(iris.data)
tail(iris.data)
A <- c(1:10)
A[-1]
B <- matrix(1:20,ncol=4,nrow=5)
B
B[,-2]
mydiv <- function(x=2,y) {
  result <- x/y
  return(result)
}
mydiv(x,2)


myfunc <- function(x,y) {
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum, mul=val.mul))
}
result <- myfunc(5,8)
result
s <- result$sum
m <- result$mul
cat("5+8=",s,"\n")
cat("5*8=",m,"\n")
 
getwd()

score <- c(90,94,100,99,92,84,80,60,70)
max(score)
min(score)
which(score==70)
which.max(score)
which.min(score)
which(score<=90)
which(score>90)
favorite <- c('Winter','Fall','Spring','Summer','Summer','Summer','Fall')
favorite
table(favorite)
table(favorite)/length(favorite)
ds <- table(favorite)
barplot(ds, main='favorite season')
pie(ds, main = 'favorite season')

mydata <- c(90,95,85,80,82,97)
quantile(mydata)
median(mydata)
mean(mydata)
mean(mydata, trim = 0.2)
summary(mydata)

var(score)
sd(score)
range(score)
diff(range(score))

dist <- cars[,2]
dist
boxplot(dist, main="자동차 제동 거리거리")
c <- cars

boxplot(Petal.Length~Speciess, data=iris, main="Species and Petal.length")


beers <-  c(5,2,9,8,3,7,3,5,3,5)
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,
         0.06,0.02,0.05)
bbl <- data.frame(beers,bal)
bbl <- data.frame(bal,beers)
plot(bbl)

plot(bal~beers,data=bbl)
plot(beers,bal)
line <- lm(bal~beers,data=bbl)
abline(line)
cor(beers,bal)
cor(iris[,1:4])
4

num <- c(1,2,3,4,5,6,7,8,9,10)
bbn <- data.frame(beers,bal,num)
bbn
pairs(bbn)
plot(bbn)

month = 1:12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)

plot(month,late1)
lines(month,late2)
lines(month,late1)

a <- c('a','b','c','d','e')
b <- c(1,2,3,4,5)
c <- c(T,T,F,F,T)
z <- data.frame(a,b,c)
z
z2 <- matrix(a,nrow = 1, ncol = 5)
z2
z3 <- rbind(z2,b)
z3
rownames(z3) <- c("ALP","LEV")
z3
late1>10
late1[late1>10]
z2
bt <- c('a','b','c','d','e')
bt.new <- factor(bt)
bt.new[7] <- 'a'
bt.new
bt.new[6] <- 'b'
bt.new
bt.new[8] <- 'h'

city <- c("Seoul","Tokyo","Washington")
city.new <- as.integer(city)
city.new
iris["Species"]
I1 <- iris["Species"]
class(I1)
I2 <- iris[,"Species"]
class(I2)
I3 <- iris$Species
class(I3)
table(iris[,5])
table(iris[,4])
table(iris[,5])/length(iris[,5])

mydata <- c(60, 62, 64, 65, 68, 69, 120)
quantile(mydata)
quantile(mydata, (0:10)/10) 
quantile(mydata) 
quantile(mydata, (0:20)/20)
summary(mydata)

z <- c(1,2,3,4,5,6,7,8,9)
mean(z)
sum(z)/length(z)
sort(z, decreasing=T)
z
getwd()
setwd("/Users/hyunjinlee/Desktop")
air <- read.csv("airquality.csv", header=TRUE)
air
write.csv(air,"airquality.csv", row.names = FALSE)
cars
dist <- cars[,2]
class(dist)
