### Criação de Listas

# Opção 1

clientes_nomes<-c("Roberta","Maria","Marcos","Felipe")
clientes_quant<-c(12,10,22,12)
ID_clientes<-seq(101,104)
novo_cliente<-c(TRUE,FALSE,FALSE,TRUE)

balanço<- list(ID_clientes,clientes_nomes,clientes_quant,novo_cliente,matrix(0,4,5),mean)

# Opção 2
#Nomeia os objetos na lista:
list(ID=seq(101,104),nome=c("Roberta","Maria","Marcos","Felipe"),Quant=c(12,10,22,12),
     Novo_cliente=c(TRUE,FALSE,FALSE,TRUE))


# Criando uma lista já com os nomes dos elementos
balanço2<- list(ID=ID_clientes,Nomes=clientes_nomes,
                Quantidades=clientes_quant,Novo_Cleite=novo_cliente,
                Histórico=matrix(0,4,5),Média=mean(clientes_quant))

# Ou Colocando nomes
balanço
names(balanço)<-c("Código do Cliente","Nomes","Quantidades Vendidas","Novo Cliente?","Histórico","Mèdia Vendida")

###### Pesquisa de informações na Lista

#Cifrão permite acessar os elementos nomeados de uma lista:
balanço$Histórico
balanço$Nomes

#Pega o segundo elemento do vetor de nomes:
balanço$Nomes[2]
balanço$`Quantidades Vendidas`[2]

balanço$Nomes[3:4]

#Outra forma de acessar os elementos da lista pelo indice, entre colchetes duplos:
balanço[[1]]
balanço[[2]]
balanço[[4]]
balanço[[5]]


historico<-balanço[[5]]

#As duas formas resumida de acessas os elementos:
nomedalista$nomedoobjeto[indice]

nomedalista[[indice]]


### Modificando elementos da lista

balanço$Nomes[3]<-"Paulo"

balanço$`Quantidades Vendidas`[c(1,3)]<-c(13,23)

balanço$`Novo Cliente?`[4]<-FALSE

balanço$Histórico[1, ]<-c(10,13,11,17,19)
balanço$Histórico[4,3 ]<-20

balanço$Histórico <- balanço$Histórico[,-5]


# Adicionando e removendo elementos de um vetor dentro da lista

balanço$Nomes[5]<-"Camila"

balanço$Nomes[5:8]<-c("Camila","Fábio","Marta","Patricia")

balanço$Nomes <- balanço$Nomes[-(5:8)]

# Nomeando linhas e colunas de uma matriz dentro da lista
balanço$Histórico

colnames(balanço$Histórico)<-c("Jan","Fev","Mar","Abr")
rownames(balanço$Histórico)<-balanço$Nomes

# Removendo objetos da lista
balanço<-balanço[-6]

#Combinação de Listas

lista_info<-list(Data="12-10-2020",Gestor="Maurício Almeida",Mês_Referência="Outubro")
#Combinando as listas
lista_final<-c(balanço,lista_info)

names(lista_final)


# Desmembrando a lista
#Transformar a lista em vetor
unlist(lista_final)[1]

unlist(lista_final)[10]

lista_final$`Quantidades Vendidas`[2]

listanova<-unlist(lista_final)

listanova[10]

