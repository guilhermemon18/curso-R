#Vetores: igual nas linguagens classicas:

# 12 15 3 5
vendas<-c(12,15,3,5)
meses_ano<-c("jan","fev","Mar","abr")

# vendas2<- scan()

#no R os índices começam em 1, NÃO EM 0!
vendas[1]
vendas[4]

#filtra e mostra os valores dos indices 1 e 4 c(1,4)
vendas[c(1,4)]

#filtra um intervalo de indices no vetor:
vendas[1:3]

#Atribuir e modificar o valor de um vetor:
vendas[3] <- 13
vendas[3]


vendas[4]<- 15
vendas[4]

vendas[c(1,4)]<- c(0,90)
vendas

vendas[2:4]<- c(40,35,24)
vendas

meses_ano[3:4]<-c("março", "abril")

#Remove um elemento do vetor
vendas <- vendas[-4]

vendas[4] <-70

vendas[5:7] <- c(23,43,15)

#Operações com vetores:
#tamanho do vetor
length(vendas)

#operaçoes aplicadas a todos os elementos do vetor individualmente:
vendas + 2
vendas * 2
vendas / 2
vendas - 2

vendas ^ 2

log(vendas)
mean(vendas)
max(vendas)
min(vendas)
sqrt(vendas)
sort(vendas)
sort(vendas,decreasing=T)

#para atualizar o vetor é necessario atribuir com o <-
#senao apenas retorna o valor e não o armazena.
vendas < - vendas + vendas*2

vendas_v1 <- vendas
vendas_v2 <- c(15,30,40,23,34,31,80)

vendas_v1 + vendas_v2
vendas_v1 - vendas_v2
vendas_v1 - vendas_v2 + vendas*4

vendas_v1 <- vendas_v1[-1]

vendas_v1 + vendas_2  #erro porque eles tem tamanhos diferentes

# União, Interseção e Diferenças entre vetores


vendedor1<-c("Nike","Adidas","Olympikus")

vendedor2<-c("Adidas","Mizuno","Topper")

#união de conjuntos
union(vendedor1,vendedor2)
#intersecção
intersect(vendedor1,vendedor2)
#conjunto diferença
setdiff(vendedor2,vendedor1)
#conjunto diferença
setdiff(vendedor1,vendedor2)

arroz_marcas<-c("Camil","Tio João","Prato Fino")
feijão_marcas<-c("Kicaldo","Milano","Urbano")

#Combinatória: retorna todas as combinaçoes possiveis
#entre os elemetnos dos vetores em um [fator]
interaction(arroz_marcas,feijão_marcas)

a<-c("Camisa 1","Camisa 2")

b<-c("Calca 1","Calca 2","Calca 3")
#Outra forma de fazer a combinatória, porém retorna
#um  [dataframe] com todas as combinações
expand.grid(a,b)

# Vetores Lógicos 

produtos<-c("TV","Refrigerador","Notebook","Celular")
quantidades<-c(30,36,20,15)

#Faz o teste e verifica todoso os elementos do vetor
#retorna um vetor com true e false indicando quais
#correspondem aos predicados:
quantidades > 10
quantidades >= 20
quantidades < 10
quantidades <= 20
quantidades == 25
quantidades != 25

quantidades2<-quantidades*2

#Comparaççao elemento a elemento de vetores:
quantidades == quantidades2
quantidades != quantidades2
quantidades > quantidades2
quantidades < quantidades2

quantidades[3]==60

produtos == "TV"
#soma a quantidade de verdadeiros (TRUE)
sum(produtos == "TV")

#Localizar a posição de um elemento no vetor
#encontrar o index:
nomes<-c("Maria","João","Luiza","Paula")

# Localiza em qual posição (índice) do vetor está o elemento "Paula".
match("Paula", nomes)
