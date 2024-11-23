########### Decision Making - IF


#Estruturas decisão:
#####  Criando novamento o data frame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")
str(resumo)  #tipos corretos das variáveis
resumo

resumo$quant_Abril<-c(130,300,240,145,225)
resumo$capacidade<-c(460,500,470,390,100)

i<-5
if(resumo$quant_Abril[i]<=resumo$capacidade[i] ){
  print("Pedido Aprovado!")
}


#Else

#####  Criando novamento o data frame

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")
str(resumo)  #tipos corretos das variáveis
resumo

resumo$quant_Abril<-c(130,300,240,145,225)
resumo$capacidade<-c(460,500,470,390,100)

i<-5
if(resumo$quant_Abril[i]<=resumo$capacidade[i] ){
  print("Pedido Aprovado!")
} else { 
  cat("Descupe! A quantidade solicitada SUPERA a capacidade do fornecedor",resumo$fornecedores[i] ,"\n")
}


#ou 
if(resumo$quant_Abril[i]<=resumo$capacidade[i] ){
  print("Pedido Aprovado!")
}

if(resumo$quant_Abril[i]>resumo$capacidade[i]){
  cat("Descupe! A quantidade solicitada SUPERA a capacidade do fornecedor",resumo$fornecedores[i] ,"\n")
}


###### IF, ELSE juntos ao FOR

resumo

for(i in 1:nrow(resumo)){
  
  if(resumo$quant_Abril[i]<=resumo$capacidade[i]){
    print("Pedido Aceito")
  } else cat("Atenção! O seu pedido de ",resumo$quant_Abril[i],"supera o limite de",
             resumo$capacidade[i],"do fornecedor ",resumo$fornecedores[i],"\n")
  
  
} #fim do for


