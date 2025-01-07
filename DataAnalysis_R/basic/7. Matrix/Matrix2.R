#매트릭스 만들기 및 값 저장 방향 바꾸기
z <- matrix(1:24, nrow=4, ncol=6)
z
z2 <- matrix(1:24, nrow=4, ncol=6, byrow=TRUE)
z2

#매트릭스에 벡터 추가하기
x <- 1:4
y <- 5:8
m1 <- cbind(x,y)
m1
m2 <- rbind(x,y)
m2
m3 <- cbind(z,x)
m3
m4 <- cbind(m3,y)
m4
#매트릭스에 벡터 추가하기(Warning message)
m5 <- rbind(z,x)
m5
#매트릭스에서 값 추출하기
z[2,4]
z[4,2]
z[2,]
z[,4]
z[3,2:4]
z[3,c(2,4,6)]
z[,c(1,2,5)]
#매트릭스의 행과 열에 이름 지정하기4
price <- matrix(c(5500,5000,4550,4500,4750,120,120,120,125,120,5,5,5,5,5),nrow=5, ncol=3)
rownames(price) <- c('너구리','신라면','삼양라면','안성탕면','진라면매운맛')
colnames(price) <- c('가격','규격(g)','수량')
price
price['신라면','가격']
price['진라면매운맛',c('가격','수량')]
price[,'가격']
rownames(price)
colnames(price)
rownames(price)[1]
colnames(price)[3]