#DataFrame
major = c("History","English","France")
Rank = c("1","2","3")
major.info <- data.frame(Major,Rank)
major.info <- data.frame("Major","Rank")
major.info
Rank <- c(1,2,3)
major.info <- data.frame("Major","Rank")
major.info
major.info <- data.frame(Major,Rank)
major.info
Rank <- c(1,2,3)
major.info <- data.frame(Major,Rank)
Rank <- c(1,2,3)
major.info <- data.frame(Major,Rank)
city <-c("Seoul","Tokyo","Washington")
rank <-c(1,3,2)
city.info <-data.frame(city, rank)
city.info

#DataFrame
Major <-c("History","English","France")
Rank <-c(1,2,3)
major.info <-data.frame(Major, Rank)
major.info
iris
iris.info <- iris
dim(iris)
ncol(iris)
nrow(iris)
colnames(iris)
rownames(iris)
head(iris)
tail(iris)
str(iris)
iris[,5]
iris[1:50,5]
unique(iris[,5])
unique(iris[,"Species"])

#Manage Dataframe : Sum/Means
colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

#Extract data from Dataframe
Iris.data <- subset(iris, Sepal.Length>5.0 & Sepal.Width>4.0)
Iris.data

#Extract data from Dataframe
Iris.data <- subset(iris, Sepal.Length>4.0 & Sepal.Width>3.0)
Iris.data

#Extract data from Dataframe
Iris.data <- subset(iris, Sepal.Length>5.0 & Sepal.Width>4.0)
Iris.data

#Arithmetic Operation with Matrix
x <- matrix(1:20,4,5)
x
x*2
x*4
x+3
x-2
x/2
x%2