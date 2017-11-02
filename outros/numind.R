ipca_ind <- NULL   #    Cria vetor nulo
ipca_ind[1] <- 100 #    Mês-base: dez-1993 igual a 100


for(i in 2:length(ipca_var)) {  # Início do laço for
  ipca_ind[i] <- ipca_ind[i-1]*(1+ipca_var[i]/100)
} #fim do laço for

ipca_ind <- ts(ipca_ind, start=c(1993,12), frequency=12)  #Transforma em série temporal