
for (j in 7){
  print(j)
}


x <- read.delim('adult.data', header = F, sep = ',', stringsAsFactors = F)
setwd("~/R-exercises")

colnames(x) <- c('age', 'workclass', 'fnlwgt', 'education', 'years_education', 
                 'marital_status', 'occupation', 'relatonship', 'race', 'sex', 
                 'capital_gain', 'capital_loss', 'hours_per_week', 'native_country', 'income')

x <- read.delim('arquivos/poker-hand-training-true.data', header = F, sep = ',', stringsAsFactors = F)
colnames(x) <- c('S1', 'C1', 'S2', 'C2', 'S3', 'C3', 'S4', 'C4', 'S5', 'C5', 'Poker Hand')

x <- read.csv('datasets/forestfires.csv', stringsAsFactors = F)

days <- seq(7)
names(days) <- c('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat')
days['mon'][1]
for (d in 1:length(x[,1])){
  x$day[d] <- days[x$day[d]]
}
plot(x$ISI~x$day, xlab = 'Days of week', ylab = 'ISI')

par(bg = 'lightgray')
plot(x$DMC~x$DC, xlab = 'DC', ylab = 'DMC', col = 'darkgreen', cex.lab = 0.9, pch = 20, font.lab = 3)
fit <- lm(x$day, x$ISI)
