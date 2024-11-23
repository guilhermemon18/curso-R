##### Fatores

# Criação forma 1
#Criar a partir de um vetor, de variáveis categóricas já definidas:
#Fatores são bons para representar variaveis categóricas tipo gênero,
#escolaridade, cor...
genero<-c("2","2","1","1","2","3")
genero_ft<-as.factor(genero)
str(genero)
str(genero_ft)

# Criação forma 2
#Criar do zero
a<-factor(c("2","2","1","1","2","3"))
str(a)


#### Acessando os elementos do fator criado

genero_ft[3]
genero_ft[2]

genero_ft[2:4]

genero_ft[length(genero_ft)]


#### Modificando

genero_ft[2] <-3


### Operações com Fatores - parte 1


produtos_online<-factor(c("Produto A","Produto C","Produto A","Produto B", "Produto C","Produto B"))
produtos_pres<-factor(c("Produto C","Produto C","Produto D","Produto A", "Produto A"))

library(forcats)

vendas<-fct_c(produtos_online,produtos_pres)

### Alterar o label dos níveis do fator

# opção 1
genero_ft<-factor(c(1,2,2,2,2,3,1,1))
plot(genero_ft)
#Altera todos os label dos niveis do fator:
a<-lvls_revalue(genero_ft,c("Masculino","Feminino","Outros"))
plot(a)

# opção 2
levels(genero_ft)<-c("Masculino","Feminino","Outros")
plot(genero_ft)



#### Modificando níveis do fator


# Opção 3: 

genero_ft<-factor(c(1,1,3,2,3,1,1,2,3))
plot(genero_ft)
#Altera apenas labels especificos que se desejar alterar:
a<-fct_recode(genero_ft,Feminino="2", Outros="3",Masculino="1")
plot(a)



#### Agrupando níveis do fator

como_soube<-factor(c("Internet","INTERNET","net","Google","Pesquisa na Web","amigo","amiga","uma pessoa"))

#Agrupa os níveis para uma categoria em comum, para padronizar coisas similiares do mesmo nível
a<-fct_collapse(como_soube,Internet=c("Internet","INTERNET","net","Google","Pesquisa na Web"),
                Amigo=c("amigo","amiga","uma pessoa") ) 
plot(a)


### Agrupando fatores com maior frequência fct_lump()
#Util para pesquisas eleitorais: dois candidatos mais disputados e outros.

estado_civil<-factor(c("solteiro","solteiro","viúvo","divorciado","solteiro","casado","casado", "casado",
                       "união estável","viúvo"))

plot(estado_civil)

#SE dois níveis tiverem a mesma frequencia ele burla o limite de 2 e coloca
#ambos que empataram + o nível "Outros", totalizando 3.
a<-fct_lump(estado_civil,2,other_level = "Outros")  #2 classes principais + "Outros"
plot(a)

b<-fct_lump(estado_civil,3,other_level = "Outros")  #3 classes principais + "Outros"
plot(b)


##### Reordenando os níveis 
#Variaveis qualitativas ordinais, variaveis categórias com hierarquia/ordem:

escolaridade<- factor(c("Superior","Fundamental","Fundamental",
                        "Pós-graduado","Ensino_Médio","Superior"))
plot(escolaridade)
#Reeordena a ordem de acordo com a hierarquia de ensino:
a<-fct_relevel(escolaridade,c("Fundamental","Ensino_Médio","Superior","Pós-graduado"))
plot(a)


###### 

#CRITÉRIOS PARA ORDENAR OS NÍVEIS DO FATOR
#- Ordem alfabética    
#- Ordem Racional        Ensino médio < Superior <  Mestrado < Doutorado
#- Ordenar por uma variável externa

faturamento<-c(30,24,12,40,20,30,44,53)
escolaridade<-factor(c("Fundamental","Superior","Mestrado","Doutorado","Doutorado",
                       "Fundamental","Mestrado","Doutorado"))

#fundamental = 30, 30 ---> mean = 30    sum = 60
#Superior = 24  (mean = sum)
#Doutorado = 53, 40 , 20  --> média = 37,7   sum = 113
#mestrado = 12 , 44   mean=28   sum=56


#media:      Superior < Mestrado < Fundamental < Doutorado
#Sum:        Superior < Mestrado < Fundamental < Doutorado 


#Quem tem maior faturamento?  Fundamental, Superior, etc...?
#Reeordena a escolaridade com base na média do faturamento por níveis do fator:
fct_reorder(escolaridade,faturamento,mean)  
#Reeordena a escolaridade com base na soma do faturamento por níveis do fator:
fct_reorder(escolaridade,faturamento,sum)  




