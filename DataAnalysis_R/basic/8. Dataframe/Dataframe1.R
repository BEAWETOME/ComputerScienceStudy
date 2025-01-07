iris.new <- iris
dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
head(iris)
tail(iris)
head(iris.new,20)
tail(iris.new,25)
str(iris)
unique(iris)
unique(iris[,5])
unique(iris[,2])
table(iris[,"Species"])
colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])
z <- matrix(1:20, nrow=4, ncol=5)
z
t(z)
t(z)
z
class(iris)
class(z)
state.x77
class(state.x77)
str(state.x77)
state <- state.x77
state
iris.new$Species
