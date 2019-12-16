
step <- function (x){
  if (x >= 1){
    return(1)
  }
  return(0)
}

mse <- function (values){
  m <- mean(values^2)
}

rmse <- function (values){
  r <- sqrt(mse(values))
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
    x <- c(x, weights[i] + input[i] * learning_rate * error)
  }
  return(x)
}

treinamento <- function (ages, inputs, output, weights, hidden_weights, learning_rate){
  l <- length(inputs[,1])
  # m <- length(hidden_weights)
  m <- length(weights[1,])
  for (i in 1:ages){
    for (j in 1:l){
      s <- c()
      f <- c()
      delta <- c()
      for (k in 1:m){
        out <- inputs[l,] %*% weights[,k]
        s <- c(s, sigmoid(out[1]))
      }
      e <- s %*% hidden_weights
      e <- step(e[1]) - output[j]
      f <- c(f, e)
      delta <- c(delta, e * sigmoid_derivate(out[1]))
    }
    g <- rmse(f)
    hidden_weights <- ajusta_pesos(s, hidden_weights, learning_rate = learning_rate, g)
    for (k in seq(m)){
      weights[,k] <- ajusta_pesos(inputs[j,], weights[,k], learning_rate = learning_rate, g)
    }
  }
  weights <- rbind(weights, hidden_weights)
}

# Xor
entradas = matrix(c(0, 0, 0, 1, 1, 0, 1, 1), nrow = 4, byrow = T)
saidas = c(0, 1, 1, 0)

pesos_ocultas = rnorm(3)
pesos_entradas = matrix(rnorm(6), ncol = 3, byrow = T)
# Each row matches with the weights between one neuron of the input layer with all hidden layer.
epocas = 1000

resultado = treinamento(epocas, entradas, saidas, pesos_entradas, pesos_ocultas, 0.2)
