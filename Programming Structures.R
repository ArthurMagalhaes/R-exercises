# Ex 01

count = seq(100)
x = c()

for (i in count){
  a <- exp(i)
  if (a > 1000){
    x <- c(x, a)
  }
}
x

# Ex 04

x <- c(12, 53, 27, 18)
y <- c()
for (i in x){
  y <- c(y, 2*i, 3*i, 4*i)
}
z <- matrix(y, length(x), 3, byrow = TRUE)
print(z)

# Ex 05

x <- c(7, 8, 4, 0, 6, 11, 0, 7, 3, 0)
count = 0
for (i in x){
  if (i==0){
    count <- count + 1
  }
}
j = 0
k <- length(x)
if (count >= 2){
  for (i in 1:k){
    if (x[i]==0){
      j = i
      break()
    }
  }
}
print(j)

# Ex 06

f61 <- function(x){
  a <- 3*x
  b <- x^2 + x + 1
  return(a/b)
}

f62 <- function(x, y){
  a <- exp(x) + 1
  b <- 3*y - 5
}

f63 <- function(x, y, z){
  a <- 1 + 1/x + 1/y + 1/z + (1/(x*y*z))
}

# 07

f1 <- function(t){
  x <- c()
  for (i in t){
    a <- exp(i)
    if (a > 1000){
      x <- c(x, a)
    }
  }
  for (i in x){
    print(i)
  }
}

f4 <- function(column){
  rows <- c()
  for (c in column){
    rows <- c(rows, 2*c, 3*c, 4*c)
  }
  m <- matrix(rows, length(column), 3, byrow = TRUE)
}

f5 <- function(x){
  count = 0
  for (i in x){
    if (i==0){
      count <- count + 1
    }
  }
  j = 0
  k <- length(x)
  if (count >= 2){
    for (i in 1:k){
      if (x[i]==0){
        j = i
        break()
      }
    }
  }
  if (j > 0){
    sprintf("O vetor contém %d zeros e o primeiro está na posição %d.", count, j)
  }
  else {
    print("O vetor contém menos do que dois zeros")
  }
}

# Ex 08

f8 <- function(num){
  if((num%%3==0) & (num%%5==0) & (num%%7==0)){
    sprintf("%d é múltiplo de 105!", num)
  }
  else{
    sprintf("%d não é múltiplo de 105!", num)
  }
}

# Ex 09

f9 <- function(num){
  t <- seq(2, 2*num, 2)
  x <- 0
  for (j in t){
    x <- x + j
  }
  print(x)
}

# Ex 10

f10 <- function(k){
  x <- 1:k
  for (i in 1:k)
  {x[i] <- i*(i+1)/2}
  p <- prod(x)
  print(p)
}

# Ex 11

"%+%" <- function(a, b) {(a^2+b^2) / (a+b-1)}
"%^%" <- function(a, b) {exp(a+b+a*b)}
"%x%" <- function(a, b) {(a+b)/(a*b)}
"%*%" <- function(a, b) {(2*((a%x%b)>0)-1)*(a%x%b)}

"%fuck%" <- function(a, b) { if (a > b) {print("Go fuck yourself!")} else {print("Fuck you!")}}
