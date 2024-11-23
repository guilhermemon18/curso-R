#sequencias

#1 até 20 de 2 em 2:
seq(1,20,2)

#1 ate 5:
seq(1,5)

#Repete o (1), 10 vezes:
rep(1,10)

#sequências usando amostras aleatórias  

#Amostra aleatória de 10 elementos entre 30. (sem reposição)
sample(1:30,10)

#Amostra aleatória com reposição
sample(1:30,10,replace = T)
#Amostra aleatória sem reposição, (padrão)
sample(1:30,10,replace = F)

#Operaçoes em sequencias são realizadas da mesma forma que em vetores:
doc_produtos<-100:150

doc_produtos[3]
doc_produtos[3:9]
doc_produtos[c(4,10)]

doc_produtos[3]<-1002
