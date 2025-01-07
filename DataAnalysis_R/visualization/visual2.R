library(ggplot2)
library(Rtsne)
ds <- iris[,-5]
dup = which(duplicated(ds))
dup
ds <- ds[-dup,]
ds.y <- iris$Species[-dup]
tsne <- Rtsne(ds,dims=2,perplexity=10)

df.tsne <- data.frame(tsne$Y)
head(df.tsne)
ggplot(df.tsne, aes(x=X1, y=X2, color=ds.y)) +
  geom_point(size=2)

install.packages("stringr")
library(stringr)
v1 <- c('aa', 'ba', 'ccb', 'Ab', 'Bbc') 
str_detect(v1,'a')
v1[str_detect(v1,'a')]
str_detect(v1,'^a')
v1[str_detect(v1,'^a')]
v1[str_detect(v1,'^[aA]')]
v1[str_detect(v1,'^[aAbB]')]
v1[str_detect(v1,'^[aA][bB]')]
v1[str_detect(v1,'a$')]

v1 <- c('aa', 'ba', 'ccb', 'Ab', 'Bbc') 
str_count(v1,'a')

str_c('Iron','Man')
v1 <- c('aa', 'ba', 'ccb', 'Ab', 'Bbc') 
str_c(v1,' name is ',v1)
str_c(v1, collapse="-")

v1 <- c('한글', 'ba', 'ccb', 'Ab', 'Bbc') 
length(v1[1])
str_length(v1[1])

str_replace('apple','p','*')
str_replace('apple','p','**') 
str_replace_all('apple','p','*')
v4 <- c('1,100', '2,300', '3,900') 
v4 <- str_replace(v4,',','')

v4
as.numeric(v4) + 100
v4 <- c('1,100,200', '1,002,300', '1,003,900') 
v4 <- str_replace_all(v4,',','')
v4
as.numeric(v4) + 100

animal <- "pig1/dog2/cat3" 
a<-str_split(animal, '/')
a

animal2 <- "pig/dog/cat"
b <- str_sub(animal2, start = 1, end = 3)
b
b <- str_sub(animal2, start = 4, end = 8)
b

animal <- " pig/dog/cat " 
a<-str_trim(animal) 
b<-str_trim(animal, side='left') #righta
a
b
#공공데이터포털 회원가입 후 캡쳐한 거 제출

