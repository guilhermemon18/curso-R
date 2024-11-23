
###### Criação de Dataframes
#Objeto base de ciência de dados:

## Opção 1: Criando por vetores
fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

#Cria uma matriz:
resumo<-cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)

## Opção 1
#Instancia o dataFrame:
resumo_df<-as.data.frame(resumo)

#Opção 2
#Cria diretamente o dataFrame:
data.frame(fornecedores=c("A","B","E","D","X"),
           quant_Jan=c(320,230,100,340,10),
           quant_Fev=c(220,630,60,50,60),
           quant_Mar=c(520,430,100,34,10))

## Opção 3: (mais interessante)
#Instancia o dataFrame passando os vetores (V1, V2, V3) como argumentos para compor os dados dele:
dados<-data.frame(V1=fornecedores,V2=quant_Jan,V3=quant_Fev)



#### Pesquisa de elementos nos Dataframe


resumo_df[2,] #acessando uma linha específica (com todos os dados associados)
#acessadno um intervalo de linhas
resumo_df[2:4,]
#acessando mais de uma linha especificadas
resumo_df[c(1,5),]
#Acesadno uma variável especifica do dataframe
resumo_df$quant_Jan
#Acessadno todas as linhas de uma coluna especifica (quant_Jan)
resumo_df[,2]
#Acessadno as colunas 1 e 4 para todos os registros:
resumo_df[,c(1,4)]
#Busca no datagframe o fornecedor de índice 3:
resumo_df$fornecedores[3]
#busca o fornecedor de indice (3) na coluna de fornecedores (1)
resumo_df[3,1]

# Os dados estão em um determinado tipo. Se você quiser adequar seus dados ao mesmo 
#formato que estamos usando no momento da aula, então basta usar as funções:
  
#   a<- as.factor(a)  #transforma sua variável "a" em um fator
#   É importante ja estar no formato chr (texto) antes para garantir a integridade.
# 
# b<-as.character() #transforma sua variável "b" em um vetor de texto
# 
# c<- as.numeric(c)  #transforma sua variável "c" em um vetor de números

# No contexto de um dataframe criado a partir de vetores,  mesmo um vetor sendo de texto,
# quando incluído na formaçaõ do dataframe, o dataframe converte ele em Fator.
# 
# Porém, desde a versão 4.0.0 do R, a conversão automática de strings em fatores não acontece mais.



#####  Modificando o DataFrame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

### Adicionei uma forma mais direta de criação de um dataframe
resumo<-data.frame(as.factor(fornecedores),quant_Jan,quant_Fev,quant_Mar)  
str(resumo)  #tipos corretos das variáveis


#Pela outra forma....
resumo_1<-cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)
resumo_1<-as.data.frame(resumo_1)
str(resumo_1)  #...tudo é convertido para chr (R4.0+)


resumo_1$quant_Fev + 10  #Não é possível porque está como categórica
#para corrigir esta conversão automática
resumo_1$fornecedores <- as.factor(as.character(resumo_1$fornecedores))
resumo_1$quant_Jan <- as.numeric(as.character(resumo_1$quant_Jan))
resumo_1$quant_Fev <- as.numeric(as.character(resumo_1$quant_Fev))
resumo_1$quant_Mar <- as.numeric(as.character(resumo_1$quant_Mar))

str(resumo_1)

#####  Modificando o DataFrame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
str(resumo)  #tipos corretos das variáveis

#atualiza a quantidade de janeiro da linha 5.
resumo$quant_Jan[5]<-100

resumo$quant_Fev[2:4]<-c(640,75,60)

resumo$quant_Mar[c(1,4)]<-c(130,400)

resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")

# Adicionar variáveis ao Dataframe
#Adciona a variavel de quantidade de abril
resumo$quant_Abril <- c(230,250,140,320,110)

# Remover variáveis do Dataframe
#remove a variavel de quantidade de abril.
resumo <- resumo[,-5]

### Adicionando e removendo casos (registros, linhas, objetos, instãncias)

#adicionando uma nova linha (6) com novas informações
resumo[6,] <-c("Friboi",0,0,55)
#removendo a linha adicionada
resumo <- resumo[-6,]

#removendo várias linhas:
resumo <-resumo[-(c(1,4)),]

### Operações para Dataframes
ncol(resumo)
nrow(resumo)
dim(resumo)
dim(resumo)[1] #linhas
dim(resumo)[2] #colunas

length(resumo$quant_Jan)
#Exibe os nomes das variáveis
names(resumo)

#Permite visualizar o dataframe em uma nova guia como se fosse o Excel:
View(resumo)
#Exibe informaçoes sobre as variáveis, mas é importante transformá-las aos tipos
#adequados previamente para exibir a estatística:
summary(resumo)
str(resumo)

resumo$quant_Jan <- as.numeric(resumo$quant_Jan)
resumo$quant_Fev <- as.numeric(resumo$quant_Fev)
resumo$quant_Mar <- as.numeric(resumo$quant_Mar)
str(resumo)

summary(resumo)
#Estatísticas dos dados no dataframe:
mean(resumo$quant_Jan)
median(resumo$quant_Jan)
sd(resumo$quant_Jan)


