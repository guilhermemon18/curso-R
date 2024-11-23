## Arrays

#Crianção usando Matrizes

A<-matrix(1:20,4,5)

array(A, dim = c(4,5,2))  

array(A, dim = c(4,5))    #retirando a dimensão das quantidades de matrizes, ficamos apenas com uma matriz

array(0, dim = c(3,4,2))  

array(c("TV","Geladeira","Rack"),dim =c(3,2,3) )

# Criação de Arrays usando vetores   

vendas<-c(12,24,30)
produtos<-c("TV","Geladeira","Cama")

array(c(produtos,vendas),dim = c(3,2,2))
vendas_totais<-array(c(produtos,vendas),dim = c(3,2,3))

# Nomenando as dimensões
nomes_variaveis<-c("Produtos","Quantidade")
nomes_matrizes<-c("Janeiro","Fevereiro","Março")
nomes_linhas<-c("Marcos","João","Maria")
array(c(produtos,vendas),dim = c(3,2,3),dimnames = list(nomes_linhas,nomes_variaveis,nomes_matrizes))

# Acessando os elementos do Array

vendas_totais
dim(vendas_totais)

vendas_totais[linha,coluna,matriz]

vendas_totais[,,1]  #vendas Janeiro
vendas_totais[,,2]  #vendas Fevereiro
vendas_totais[,,3]  #vendas Março


vendas_totais[,1,]  # Coluna 1 de cada matriz = Produtos vendidos em cada mês
vendas_totais[,2,]  # Coluna 2 de cada matriz = Quantidades vendidas em cada mês

vendas_totais[1, ,]  # a Linha 1 de cada tabela = produção de Marcos (produtos e quantidades)
vendas_totais[2, ,]   # a Linha 2 de cada tabela = produção de João  (produtos e quantidades)

vendas_totais[3, ,]   # a Linha 3 de cada tabela = produção de Maria  (produtos e quantidades)


# Combinação de Dimensões

vendas_totais[,2,1]  #vendas Janeiro, quantidades
vendas_totais[1,,1]  
vendas_totais[1,2,1]  


vendas_totais[3,2,3]  

vendas_totais[2,1,2]

##### Modificando Arrays

# recapitulando a criação de arrays usando vetores
vendas<-c(12,24,30)
produtos<-c("TV","Geladeira","Cama")

array(c(produtos,vendas),dim = c(3,2,2))
vendas_totais<-array(c(produtos,vendas),dim = c(3,2,3))

# Nomenando as dimensões
nomes_variaveis<-c("Produtos","Quantidade")
nomes_matrizes<-c("Janeiro","Fevereiro","Março")
nomes_linhas<-c("Marcos","João","Maria")
vendas_totais<-array(c(produtos,vendas),dim = c(3,2,3),dimnames = list(nomes_linhas,nomes_variaveis,nomes_matrizes))

#modificando elementos
vendas_totais[1,2,1]<-14
vendas_totais[2 ,, 2]<-c("Freezer",10)
vendas_totais[2:3,2,3]<-c(34,80)

vendas_totais[c(1,3),2,3]<-c(20,40)


########## Operações com Arrays



# recapitulando a criação de arrays usando vetores
vendas<-c(12,24,30)
produtos<-c("TV","Geladeira","Cama")

array(c(produtos,vendas),dim = c(3,2,2))
vendas_totais<-array(c(produtos,vendas),dim = c(3,2,3))

# Nomenando as dimensões
nomes_variaveis<-c("Produtos","Quantidade")
nomes_matrizes<-c("Janeiro","Fevereiro","Março")
nomes_linhas<-c("Marcos","João","Maria")
vendas_totais<-array(c(produtos,vendas),dim = c(3,2,3),dimnames = list(nomes_linhas,nomes_variaveis,nomes_matrizes))



vendas_totais[,2,]

sum(vendas_totais[,2,])

sum(as.numeric(vendas_totais[,2,])) #soma de unidades vendidas (soma das segundas colunas de cada matriz)

max(as.numeric(vendas_totais[,2,1]))

##### Operações com arrauys - Dica extra


vendas_sem1<-c(12,10,8)
vendas_sem2<-vendas_sem1*2
vendas_sem3<-vendas_sem1*3
vendas_sem4<-vendas_sem3+15

array(c(vendas_sem1,vendas_sem2,vendas_sem3,vendas_sem4),dim=c(3,4,3))

nomes_variaveis<-c("Semana 1","Semana 2","Semana 3","Semana 4")
nomes_linhas<-c("Marcos","João","Maria")
nomes_matrizes<-c("Janeiro","Fevereiro","Março")

vendas_totais<-array(c(vendas_sem1,vendas_sem2,vendas_sem3,vendas_sem4),dim=c(3,4,3),
                     dimnames = list(nomes_linhas,nomes_variaveis,nomes_matrizes))


apply(vendas_totais, 2, sum) #Soma de todas as colunas  
apply(vendas_totais, 1, sum) #Soma de todas as linhas
apply(vendas_totais, 1, mean) #média por linha





