
step = function(value){ 
  # Step function. 
  # Sorts the value as 1, if value is greater than or equal to 1, or 0, otherwise.
  # Ordina il valore su 1 se il valore è maggiore o uguale a 1 o 0, altrimenti.
  if (value>=1){
    return(1)
  }
  return(0)
}

atualizaPesos = function(input, weights, learning_rate, error){
  # Applies the formula of weights update.
  # Applica la formula dell'aggiornamento dei pesi.
  x <- c()
  l = length(weights)
  for (i in 1:l){
    # For each weight, a new is generate applying the formula and added in the vector x.
    # Per ogni peso, viene generato un nuovo applicando la formula e aggiunto nel vettore x.    
    x <- c(x, weights[i] + learning_rate * error * input[i])
  }
  return(x)
}

treinamento = function(ages, inputs, output, weights, learning_rate){
  s = length(inputs[,1])
  for (i in seq(ages)){
    for (j in seq(s)){
      out <- inputs[j,] %*% weights
      e = step(out[1]) - output[j]
      weights = atualizaPesos(inputs[j,], weights, learning_rate = learning_rate, abs(e))
    }
  }
  return(weights)
}

------------
# And
entradas = matrix(c(0, 0, 0, 1, 1, 0, 1, 1), ncol = 2, byrow = TRUE)
saidas = c(0, 0, 0, 1)
-----------
# Or
entradas = matrix(c(0, 0, 0, 1, 1, 0, 1, 1), nrow = 4, byrow = T)
saidas = c(0, 1, 1, 1)
----------

pesos = c(0.1, 0.1)
epocas = 1000

resultado = treinamento(epocas, entradas, saidas, pesos, 0.1)

