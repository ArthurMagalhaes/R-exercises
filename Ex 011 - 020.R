# Ex 011

wide = as.double(readline('Largura da parede: '))
height = as.double(readline('Altura da parede: '))
area = wide * height
print(paste('Sua parede tem dimensão', wide, 'X', height, 'e sua área é', area, 'm2'))
print(paste('Você precisa de', area / 2, 'litros de tinta.'))

# Ex 012

price = as.double(readline('Qual o preço do produto? R$ '))
print(paste('Você pagará R$', 0.95 * price))

# Ex 013

salary = as.double(readline('Quanto é o salário do funcionário? R$ '))
print(paste('Após o aumento, o salário será de R$', round(1.15 * salary, 2)))

# Ex 014

celsius = as.double(readline('Informe a temperatura em ºC: '))
fahrenheit = 32 + 9 * celsius / 5
print(paste('A temperatura de', celsius, 'ºC corresponde a', fahrenheit, 'ºF.'))
 
# Ex 015

days = as.integer(readline('Quanto durou (em dias) o período de locação: '))
km = as.integer(readline('Quantos quilômetros foram percorridos: '))

print(paste('Você deverá pagar R$', round(60 * days + 0.15 * km, 2)))

# Ex 016

num = as.double(readline('Digite um número real qualquer: '))
numr = round(num)
if (numr > num) {print(paste('A parte inteira é', numr - 1))} else{print(paste('A parte inteira é', numr))}

# Ex 017

cat1 = as.double(readline('Digite a medida do 1º cateto: '))
cat2 = as.double(readline('Digite a medida do 2º cateto: '))

hip = sqrt(cat1 ^ 2 + cat2 ^2)
print(paste('A hipotenusa mede', hip))

# Ex 018

angule = as.double(readline('Digite o ângulo desejado: '))
pi = 3.1415926
rad = pi * angule / 180
print(paste('O seno de', angule, 'é', sin(rad)))
print(paste('O cosseno de', angule, 'é', cos(rad)))
print(paste('A tangente de', angule, 'é', tan(rad)))

# Ex 019


