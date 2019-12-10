# Ex 01

cities <- c()
cities[1] <- "London"
cities[2] <- "Paris"
cities[3] <- "Rome"
cities[4] <- "Athens"

print(cities)

# Ex 02

x <- 1:10
x <- as.character(x)
print(x)

# Ex 03

print("I like apples very much.", quote = FALSE)
noquote("I like apples very much.")

# Ex 04

x<- 25.13499517
print(format(x, digits = 5))
print(format(x, nsmall = 6))

# Ex 05

x <- 132.48349587015
sprintf("%.5f", x)
sprintf("%.9g", x)
sprintf("%+.6f", x)
sprintf("%e", x)

# Ex 06

sprintf("By dividing %d to %d we get %.2f.", x, y, x/y)

# Ex 07

x <- c("car", "train", "airplane", "ship")
y <- c("road", "railroad", "air", "Water")
paste(x, y, collapse = "*")
paste(x, y, sep = ", ", collapse = "_")

# Ex 08

x <- c("car", "train", "airplane", "ship")
y <- c("road", "railroad", "air", "Water")
cat(x, y, sep = "#")

# Ex 10

x <- "I learn how to write code in R."
x <- chartr("e", "w", x)
x <- chartr("h", "--", x)
x <- chartr("ow", "#\\", x)
print(x)

# Ex 11

names <- c("Timothy", "Marianne", "Margaret", "Christian")
substr(names, 2, 5)
substr(names, 5, 5) <- '-'
print(names)
substr(names, 5, 7) <- 'www'
print(names)
substr(names, 3, 5) <- c("123", "789", "024", "357")
print(names)

# Ex 12

strsplit("352:611:733", split = ":")
strsplit("Santa Mônica", split = " ")
strsplit("Colorado", split = "o")
strsplit("management", split = "")

# Ex 13


