#결측치
z <- c(1,2,3,NA,5,NA,7)
sum(z) #오류
is.na(z) #확인
sum(is.na(z)) #개수확인
sum(z, na.rm=TRUE) #결측치 빼고 합


z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)
z3 <- c(1,2,3,4,5,6,7)
z3[is.na(z2)]

z1[is.na(z1)] <- 0 #치환 
z1

z3 <- as.vector(na.omit(z2)) #제거
z3
z4 <- na.omit(z2)
z4
x <- iris
x[1,2] <- NA; x[1,3] <- NA
x[2,3] <- NA; x[3,4] <- NA
head(x)

for(i in 1:ncol(x)) {
  this.na <- is.na(x[,i])
  cat(colnames(x)[i], "\t", sum(this.na), "\n")
}

x <- iris
col_na <- function(y) {
  return(sum(is.na(y)))
}
na_count <- apply(x,2,FUN=col_na)
na_count


sum(is.na(iris[,1]))

st <- data.frame(state.x77)
boxplot.stats(st$Income)$out
boxplot(st)
boxplot(st$Income)

 
idx <- sample(1:nrow(iris), 50, replace=FALSE)
iris.50 <- iris[idx,]
iris.50
head(iris.50)
iris.50$Species
split(iris.50, iris.50$Species)
set.seed(100)
sample(1:50, 10)
sample(1:50, 10)
sample(1:50, 10)
sample(1:50, 10)
sample(1:50, 10)
set.seed(5)
sample(1:50, 10)
sample(1:50, 10)
sample(1:10, 2)
sample(1:50, 10)
sample(1:50, 10)
sample(1:10, 2)
sample(1:10, 2)
sample(1:10, 2)

iris.list <- list(iris[,c(1,2)])
iris.list
aggregate(iris[,-5], by=list(iris$Species), FUN=mean)
mtcars
agg <- aggregate(mtcars, by=list(cyl=mtcars$cyl, vs=mtcars$vs), FUN=max)
agg
cars<- mtcars[mtcars$cyl==6,]
cars

install.packages("stringr")
library(stringr)
v1 <- c('aa','ba','ccb','Ab','Bbc')
str_detect(v1,'a')
str_count(v1)
str_c(v1, collapse = "-")

length(v1[1])
str_length(v1[1])

animal <- " pig/dog/cat "
a <- str_split(animal, '/')
a

str_sub(animal, start=1, end=3)


a <- str_trim(animal)
b <- str_trim(animal, side='left')
c <- str_trim(animal, side ='right')
a
b
c 