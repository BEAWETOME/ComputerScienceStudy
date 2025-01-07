#현재 패키지 저장 경로 확인 (ppt에 없는 내용이지만 중요)
getwd()

#대입연산자 X 비교연산자 O [==] / 대소문자 주의
iris.new <- iris
my.iris <- subset(iris, Species=='setosa')

# 조건문 if - else
job.type <- 'A'
if(job.type=='B') {bonus <- 200} else {bonus <- 100}
print(bonus)

#조건문 if - else if - ... - else  / {} <- Codeblock
score <- 85
if (score > 90)
  { grade <- 'A'} else if (score > 80)       #이렇게 쓸수도 있음 {} else if {}/  {} else {} <- 이것만 지키면 됨
  { grade <- 'B'} else if (score > 70) 
  { grade <- 'C'} else if (score > 60) 
  {grade <- 'D'} else {grade <- 'F' }
print(grade)
#이렇게도 실행은 되지만 굳이 보기 불편하게 이럴 필요 X
a <- 10
if(a<5) {
  print(a)   # 코드블록을 사용할때 탭 눌러서 or 스페이스바4번 사용해서 보기 편하게 만들기
  }          # 중괄호 쓰고 엔터 누르면 자동으로 띄어쓰기 됨

# &(and) or |(or) 기호 사용
a <- 10
b <- 20
if(a>5 & b>5) {print (a+b) }
if(a>5 | b>30) {print (a*b) }

#if - else
a <- 10 
b <- 20
if (a>b) { 
  c <- a
} else {
  c <- b }
print(c)

#ifelse [if - else 보다 더 보기쉽고 편리함/독립적인 조건문이라고 생각]
a <- 10 
b <- 20
c <- ifelse(a>b, a, b) 
print(c)

#반복문 (정해진 동작 반복적 수행)
for(i in 1:10) {
  print('*')
}
for (j in 5:10) {
  print(j)
}

for(i in 1:9) {
  cat('2 *', i,'=', 2*i,'\n') } #\n 은 엔터랑 같음

for(k in 1:100) {if(k%%2==1) {print(k)}} #1~100중 홀수
for(k in 1:100) {if(k%%2==0) {print(k)}} #1~100중 짝수

sum <- 0       #sum 초기화 역할
for(p in 1:100) {
  sum <- sum + i} 
  print(sum)
  
#반복문[while]
sum <- 0
u <- 1
while(u <=100) {
  sum <- sum + 1
  u <- u + 1 
  }
print(sum)

#사용자 정의 함수 / 일단 num.max에 하나의 값을 지정하고 여기서는 x를 대입해 x와 y를 비교해 큰 값이 num.max
#가 된다
mymax <- function(x,y) { num.max <- x
if (y > x) {
  num.max <- y
}
return(num.max) }

mymax(10,15)
a <- mymax(20,15) 
b <- mymax(31,45) 
print(a+b)