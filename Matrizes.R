
# Matrizes - Criação usando vetores
produtos<-c("TV","Refrigerador","Notebook","Celular")
quantidades<-c(30,36,20,15)

produtos  #criado nas aulas anteriores
quantidades #criado nas aulas anteriores

#cbind, mescla dois vetores em uma matriz
#organiza a visualização por colunas (melhor exibição)
#As variaveis ficam em colunas, as linhas são os dados delas
vendas<-cbind(produtos,quantidades)
#rbind, mescla dois vetores em uma matriz
#organiza a visualização por linhas (exibição menos intuitiva)
#as variaveis ficam em linhas, as coluans são os dados delas.
vendas<-rbind(produtos,quantidades)


# Matrizes usando o matrix()
#Cria uma matriz com elementos de 1 a 20 com 4 linhas e 5 colunas:
matrix(1:20, nrow =4 ,ncol=5)
#Cria uma matriz de 4 linhas e 5 colunas preenchida com a palavra brasil
matrix("Brasil", nrow =4 ,ncol=5)
#Incializa uma matriz 4 * 5 com o valor zero para suas células:
matrix(0, nrow =4 ,ncol=5)

#Inicializa uma matriz 4*5 distribuindo os elementos pelas linhas
#byrow = T ativa essa perspectiva, por padrão preenche pelas colunas:
matrix(1:20, nrow =4 ,ncol=5,byrow = T)
matrix(1:30, nrow =4 ,ncol=5,byrow = T)
matrix(1:5, nrow =4 ,ncol=5,byrow = T)
#Preenche a matriz com números de 1 a 5, até atingir sua capacidade de 4*5
#replicando as ocorrencias: 1 2 3 4 5 1 2 3 4 5 ...
matrix(1:5, nrow =4 ,ncol=5)

# ACESSANDO uma matriz criada
#Basicamente é a mesma coisa que qualquer linguagem de programação convencional:

vendas

produtos[3]


vendas[1,2]
vendas[1,]
vendas[,2]
vendas[2:4,]
vendas[2:4,1]

vendas[4,2]
vendas[2,1]

# Modificando matrizes


vendas_Jan<-vendas
vendas_Fev<-vendas_Jan

#alterando uma coluna inteira: somando + 2 a todos os elementos.
vendas_Fev[,2]<- as.numeric(vendas_Jan[,2]) + 2
#alterando apenas um elemento
vendas_Fev[1,1]<-c("Televisor")
#Alterando  uma linha:
vendas_Fev[3,] <- c("PC",40)
#alterando um intervalo de linhas (2:4) para uma coluna (2)
vendas_Fev[2:4,2] <- c(12,100,30)
#Alterar conjunto de elementos especificos em uma coluna (1)
vendas_Fev[c(1,4),1] <- c("TV","Smartphone")

#Removendo linhas e colunas:
vendas_Fev[,-1]
vendas_Fev[-2,]
vendas_Fev[-1,-2]

vendas_Fev <- vendas_Fev[-4,]

# Operações com Matrizes


carlos<-c(120,130,400,230)
marcos<-c(20,334,420,130)
maria<-c(22,28,19,10)

vendas_Reais <- cbind(carlos,marcos,maria)

#dimensões da matriz (4 3)
dim(vendas_Reais)[2]
nrow(vendas_Reais)

ncol(vendas_Reais)

#dim()[2]  igual a  ncol()
# dim()[1]  igual a nrow()

# Realiza as operações em cada elemento da matriz
vendas_Reais - 2
vendas_Reais <- vendas_Reais + 5

comissoes<- vendas_Reais*0.10
comissoes/2
comissoes ^ 2 

#Raiz quadrada da matriz
sqrt(comissoes)
#Logaritmo
log(comissoes)

#Operaçoes na primeira coluna
sum(comissoes[,1])

mean(comissoes[,1])
mean(vendas_Reais[,1])

sum(comissoes)


Jan<-comissoes*2
Fev<-comissoes

Jan + Fev
Jan - Fev
Jan*Fev

#Produto matricial
Jan %*% Fev
Jan %*% Fev[-3,]

dim(Jan)
dim(Fev[-3,])


# Curiosidades sobre Matrizes
#Representam imagens
A<-matrix(0,nrow = 5,ncol = 10)
image(A)

A<-matrix(1:50,nrow = 5,ncol = 10)
image(A)

contour(A)
contour(volcano)

persp(A)
persp(volcano)

# Curiosidades em Matrizes (parte 2)


2X = 10

solve(2,10)

3X + 2Y = 8
1X + 1Y = 2

linha1<-c(3,2,8)
linha2<-c(1,1,2)
A<-rbind(linha1,linha2)
solve(A[,1:2],A[,3]) #matriz inversa

det(A[,-3])  #determinante

t(A)    # matriz transposta



