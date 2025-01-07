"
z <- matrix(1:20, nrow=4, ncol=5)
z <- matrix(1:20, nrow=4, ncol=5, byrow=TRUE)
x <- 1:4 
y <- 5:8
z <- matrix(1:20, nrow=4, ncol=5)
"
x <- 1:4 # 벡터 x 생성
y <- 5:8 # 벡터 y 생성
z <- matrix(1:20, nrow=4, ncol=5) # 매트릭스 z 생성
m1 <- cbind(x,y) # x와 y를 열 방향으로 결합하여 매트릭스 생성
