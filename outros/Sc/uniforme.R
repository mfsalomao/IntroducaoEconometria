# constroi data frame de 2000 colunas com 2000 obs da dist. uniforme (lim min=0, lim max=100)
uniforme <- data.frame()
uniforme <- runif(2000, 0,100)
i = 1
while (i <= 1999) {
  uniforme <- cbind(uniforme,runif(2000, 0,100))
  i <- i+1
}

# constroi vetor de medias de cada coluna da distribuição uniforme
medias <- vector()
medias <- mean(uniforme[,1])
for (i in 2:2000) {
  medias[i] <- mean(uniforme[,i])
}

# constroi vetor de desvios-padrão de cada coluna da distribuição uniforme
dp <- vector()
dp <- sd(uniforme[,1])
for (i in 2:2000) {
  dp[i] <- sd(uniforme[,i])/sqrt(length(uniforme[,i]))
}

# a média do vetor de médias tende a ser igual a média da distribuição uniforme
mean(medias)
mean(uniforme[,1]) # ou qualquer outra coluna do data.frame

# o desvio-padrão do vetor de médias tende a ser dp/raiz(dp) da distribuição uniforme
sd(medias)
mean(dp)

# o histograma do vetor de médias tende a se aproximar de uma distribuição normal
hist(medias)