func <- function(x,y=2) {
  result <- x/y
  print(result)
}
func(2,2)

func <- function(x,y=2) {
  result <- x/y
  return(result)
}

score <- c(93, 84, 29,40,60,99, 85, 80)
which(score==40)
which.max(score)
min(score)

idx <- which(score<=70)
score[idx] <- 80
score


favoritecolor <- c(3, 4, 8, 9, 2, 7, 3, 1, 2, 7, 8, 4, 2) 
ds <- table(favoritecolor)
ds
barplot(ds, main = 'favoritecolor')
