# Ex 001

print('Hello world!')

# Ex 002

name = readline('Digite seu nome: ')
print(paste('Hello,', name))

# Ex 003

n1 = as.integer(readline('Digite um número: '))
n2 = as.integer(readline('Digite outro número: '))
n3 = n1 + n2

print(paste('A soma é', n3))

# Ex 004

something <- readline('Digite algo')
print(class(something))
print(typeof(something))

# Ex 005  

n <- as.integer(readline('Digite um número inteiro: '))
print(paste('O antecessor e sucessor de', n, 'são', n-1, 'e', n+1, ', respectivamente.'))

# Ex 006

n <- as.integer(readline('Digite um número inteiro: '))
print(paste('Dobro:', 2 * n))
print(paste('Triplo:', 3 * n))
print(paste('Raiz quadrada:', sqrt(n)))

#Ex 007

x <- c()
f = as.double(readline('Digite um número inteiro (0 interrompe a execução): '))
while (f!=0) {
  x <- c(x, f)
  f = as.double(readline('Digite um número inteiro (0 interrompe a execução): '))
}

print(paste('A média dos números digitados é', mean(x)))

# Ex 008

f <- as.double(readline('Digite um valor em metros: '))
print(paste(f, 'metros corresponde a', 10*f, 'decímetros.'))
print(paste(f, 'metros corresponde a', 100*f, 'centímetros.'))
print(paste(f, 'metros corresponde a', 1000*f, 'milímetros.'))

# Ex 009

num = as.integer(readline('Digite um número inteiro para ver sua tabuada: '))

print(paste(rep('-',12)))
print(paste('1 X', num, '=', 1*num))
print(paste('2 X', num, '=', 2*num))
print(paste('3 X', num, '=', 3*num))
print(paste('4 X', num, '=', 4*num))
print(paste('5 X', num, '=', 5*num))
print(paste('6 X', num, '=', 6*num))
print(paste('7 X', num, '=', 7*num))
print(paste('8 X', num, '=', 8*num))
print(paste('9 X', num, '=', 9*num))
print(paste('10 X', num, '=', 10*num))
print(paste(rep('-',12)))

# Ex 010

money = as.double(readline('Quanto dinheiro você tem na carteira (em reais)? R$'))
print(paste('Você tem', money / 4.2, 'dólares.'))
