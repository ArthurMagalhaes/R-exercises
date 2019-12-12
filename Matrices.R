# Ex 01

x <- sample(1:200, 15, replace = TRUE)
m1 <- matrix(x, nrow = 3, byrow = TRUE)
m1

# Ex 02

x <- rnorm(40, 10, 100)
m2 <- matrix(x, ncol = 8, byrow = TRUE)
m2

# Ex 03

m3 <- matrix(11:20, nrow = 2, byrow = TRUE)
m3

# Ex 04

m4 <- matrix(2, nrow = 3, ncol = 4)
m4

# Ex 05

x <- sample(50, 6)
y <- sample(50, 6)
z <- sample(50, 6)

mrow <- rbind(x, y, z)
rownames(mrow) <- NULL
mcol <- cbind(x, y, z)
colnames(mcol) <- NULL

mrow
mcol

# Ex 06

x <- sample(1:200, 15, replace = TRUE)
m6 <- matrix(x, nrow = 3, byrow = TRUE, dimnames = list(c('a', 'b', 'c'), letters[1:5]))
m6

# Ex 07

x <-sample(100, 24, replace = TRUE)
m7 <- matrix(x, nrow = 4)

m7[3,5]
m7[3,3:5]
m7[1:3,5]
m7[4,]
m7[,6]
c(m7[2:3,], m7[,c(4,6)])
c(m7[1:2,], m7[,5:6])
c(m7[3:4,], m7[,2:3])
y <- c(m7[5], m7[19], m7[22])
y

# Ex 08 

m7[m7>30]
m7[m7<65]
m7[m7==32]
m7[m7>20&m7<65]
m7[m7<40|m7>85]

# Ex 09

m7[2,5] <- 100
m7
m7[1,] <- 0
m7
m7[,4] <- 1500
m7
m7[3,4:6] <- 1001:1003
m7

# Ex 10

m10 <- matrix(rnorm(9), nrow = 3)
x <- c(10, 20, 30)
y <- c(100, 200, 300, 400)
m10 <- rbind(m10, x)
m10 <- cbind(m10, y)
m10

# Ex 12

min(m7)
max(m7)
pmax(m7[2,], m7[4,])
pmin(m7[,3], m7[,6])

# Ex 13

apply(m7, 1, sum)
apply(m7, 1, mean)
apply(m7, 2, sum)
apply(m7, 2, mean)
matrix(apply(m7, 1, cumsum), nrow = 4, byrow = TRUE)
apply(m7, 2, cumsum)
matrix(apply(m7, 1, sqrt), nrow = 4, byrow = TRUE)
matrix(apply(m7, 1, log), ncol = 6, byrow = TRUE)

# Ex 14

sweep(m7, 1, c(7, 28, -5, 20), "+")
sweep(m7, 2, c(10, 37, 22, -1, 5, -15), "-")
sweep(m7, 1, 3:6, "*")
sweep(m7, 2, 7:12, "/")

# Ex 15

m15a <- matrix(sample(30, 8), nrow = 2)
m15b <- matrix(sample(10:42, 12,  replace = TRUE), ncol = 3, byrow = TRUE)
m15a
m15b
m15c <- m15a %*% m15b
m15c
