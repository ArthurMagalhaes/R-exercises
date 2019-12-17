
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
plot(x$wind~x$temp)
fit <- lm(x$wind, x$temp)
