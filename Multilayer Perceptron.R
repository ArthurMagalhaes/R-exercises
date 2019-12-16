
step <- function (x){
  if (x >= 1){
    return(1)
  }
  return(0)
}

sigmoid <- function (x){
  y <- 1 + exp(-x)
  y <- 1 / y
}

sigmoid_derivate <- function (x){
  a <- exp(x)
  b <- (1 + exp(x)) ^ 2
  y <- a / b
}

ajusta_pesos <- function (input, weights, learning_rate, error){
  x <- c()
  l <- length(weights)
  for (i in 1:l){
    x <- c(x, weights[i] + input * learning_rate * error)
  }
  return(x)
}

treinamento <- function (ages, input, output, weights, hidden_weights, learning_rate){
  l = length(input[,1])
  m = length(hidden_weights)
  for (i in 1:ages){
    for (j in 1:l){
      out <- input[l,] %*% weights
      for (k in 1:m){
        
      }
      
    }
  }
}

# Xor
entradas = matrix(c(0, 0, 0, 1, 1, 0, 1, 1), nrow = 4, byrow = T)
saidas = c(0, 1, 1, 0)

pesos_entradas = c(0.1, 0.1)
pesos_ocultas = rnorm(3)
epocas = 1000
