# Ex 01

f1 <- factor(c(3,2,2,1,3,2,1,1,3,1), labels = c('Adidas', 'Nike', 'Reebok'))
f1

# Ex 02

f2 <- factor(c(3,2,2,1,3,2,1,1,3,1), levels = c(2, 3, 1), labels = c('Adidas', 'Nike', 'Reebok'))
f2

# Ex 03

f3 <- factor(c(3,2,2,1,3,2,1,1,3,1), levels = c(2, 3, 1, 4), 
             labels = c('Adidas', 'Nike', 'Reebok', 'Puma'))
f3[12] <- 'Puma'
f3[11] <- 'Puma'
f3

# Ex 04

f4 <- ordered(c(4, 2, 2, 3, 1, 3, 4, 3, 2, 1, 4, 4, 3, 2, 2), 
              labels = c('not satisfied', 'somewhat satisfied', 'satisfied', 'very satisfied'))
f4

# Ex 05

f5 <- ordered(c(4, 2, 2, 3, 1, 3, 4, 3, 2, 1, 4, 4, 3, 2, 2), levels =  1:5,
              labels = c('not satisfied', 'somewhat satisfied', 
                         'satisfied', 'very satisfied', 'extremely satisfied'))
f5[16:17] <- 'extremely satisfied'
f5

# Ex 06

x <- sample(100, 30, replace = TRUE)
f6 <- factor(sample(4, 30, replace = TRUE))

