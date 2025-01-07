bt <- c('A', 'B', 'B', 'O', 'AB', 'A')
bt.new <- factor(bt)
bt.new
bt.new[5]
bt.new[7] <- 'AB'
bt.new[8] <- 'C'
bt.new[8] <- 'O'
bt.new
bt.new[5]
levels(bt.new)
as.integer(bt.new)
