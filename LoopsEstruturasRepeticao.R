###### Loop FOR
# 
# i=1  --> comandos
# i=2 -->  comandos
# i=3 --
  #i=1 até 1
  # for (i in 1:10) {
  #   comando1
  #   comando2
  #   comando3
  #   ...
  #   
  # }
#Imprime de 1 a 10:
for (i in 1:10) {
  print(i)
}


#  Criando novamento o data frame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")
str(resumo)  #tipos corretos das variáveis
resumo


#novos pedidos

resumo$quant_Abril <-c(200,300,260,150,430)

# objetivo: fazer o usuário revisar seu pedido

for (i in 1:nrow(resumo)) {
  cat("Você pediu",resumo$quant_Abril[i],"unidades ao fornecedor",
      resumo$fornecedores[i],". Pedido Realizado \n")
}

#####################################################################################
##### Loop While
i<-1
while (i<=nrow(resumo)) {
  
  cat("Você pediu ",resumo$quant_Abril[i],"ao fornecedor",resumo$fornecedores[i]," Pedido Realizado \n")
  i<-i+1
}

#outro exemplo
k<-0
while (k==0) {
  print("Continuar Pedido: Sim(0) Não(1)")
  k<-scan(n=1)
  
  if(k==0){print("Vamos continuar o pedido");}
  if(k==1){print("Encerrando o pedido. Thau!"); k<-1}
  
}




