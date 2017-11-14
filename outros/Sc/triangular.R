library('triangle')
# constroi data frame de 2000 colunas com 2000 obs da dist. triangular (lim min=0, lim max=100)
triangular <- data.frame()
triangular <- rtriangle(2000, 0,100,100)
i = 1
while (i <= 1999) {
  triangular <- cbind(triangular,rtriangle(2000, 0,100,100))
  i <- i+1
}

# constroi vetor de medias de cada coluna da distribuição triangular
medias <- vector()
medias <- mean(triangular[,1])
for (i in 2:2000) {
  medias[i] <- mean(triangular[,i])
}

# constroi vetor de desvios-padrão de cada coluna da distribuição triangular
dp <- vector()
dp <- sd(triangular[,1])
for (i in 2:2000) {
  dp[i] <- sd(triangular[,i])/sqrt(length(triangular[,i]))
}

# a média do vetor de médias tende a ser igual a média da distribuição triangular
mean(medias)
mean(triangular[,1]) # ou qualquer outra coluna do data.frame

# o desvio-padrão do vetor de médias tende a ser dp/raiz(dp) da distribuição triangular
sd(medias)
mean(dp)

# o histograma do vetor de médias tende a se aproximar de uma distribuição normal
hist(medias)