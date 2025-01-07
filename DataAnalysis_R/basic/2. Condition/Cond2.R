#조건문
job.type <- 'A'
if(job.type == 'B') {
  Bonus <- 200
} else {
  Bonus <- 100
}
print(Bonus)

a <- 20
b <- 50
if(a>15&b<60) {
  print(a*b)
}
#반복문
for(i in 1:5) {print("Hello world")}

for(k in 1:5) {print(k)}

for(j in 1:9) {cat("2 X ",j," = ",2*j,"\n")}

for(n in 1:20) {if(n%%2==0) {print(n)}}
sum <- 0
for(l in 1:100) {sum <- sum + l}
print(sum)

iris
norow <- nrow(iris)
mylabel <- c()
for(i in 1:norow) {
  if (iris$Petal.Length[i] <= 1.6) {
    mylabel[i] <- "L"
  } else if (iris$Petal.Length[i] >= 5.1) {
    mylabel[i] <- "H"
  } else {
    mylabel[i] <- "M"}
}
print(mylabel)

sum <- 0
i <- 1
while(i <= 100) {
  sum <- sum + i
  i <- i + 1
}
print(sum)
#사용자 정의 함수
my.max <- function(x,y) {
  num.max <- x 
  if(y>x) {
    num.max <- y
  }
  return(num.max)
}
my.max(20,30)
a <- my.max(30,50)
b <- my.max(40,100)
print(a+b)
#사용자 정의 함수 저장 및 호출
setwd(/Users/hyunjinlee/Desktop/대학 폴더/데이터분석기초/데이터분석기초-1)
