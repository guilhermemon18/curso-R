######## Construindo uma função

#### 1 - Cadastre pedidos novos (continuar cadastrando até que o usuário interrompa)
#### 2 - Comparar os pedidos de acordo com o estoque de cada fornecedor
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

tabela_f <-resumo[,c(1,6)]
tabela_f$Preço<-c(12,14,23,44,20)


novos_pedidos<-function(nome, tabela_fornecedores){
  
  meus_pedidos<-c()
  k<-0
  
  while (k==0) {
    
    print("----------- NOVO PEDIDO ------------\n")
    cat("Temos ",nrow(tabela_fornecedores),"fornecedores cadastrados. \n")
    
    for(i in 1:nrow(tabela_fornecedores))
    {
      cat("Quantas quantidade você deseja pedir a ",tabela_fornecedores$fornecedores[i],"? \n")
      meus_pedidos[i]<-scan(n=1)  #cadastro dos pedidos
      
      # Se a quantidade for muito baixa (abaixo do limite mínimo = 10% da capacidade)
      if(meus_pedidos[i]<0.1*tabela_fornecedores$capacidade[i]){
        cat("Pedido Muito baixo. Ele deve ser maior que ",0.1*tabela_fornecedores$capacidade[i],"unidades. \n" )
      }
      
      
      else{
        
        # aprovando ou não o pedido solicitado
        if(meus_pedidos[i]<=tabela_fornecedores$capacidade[i]){
          print("Pedido Enviado com Sucesso!")
        }
        
        
        if(meus_pedidos[i]> tabela_fornecedores$capacidade[i]){
          cat("Pedido ACIMA do estoque máximo. O pedido deve ser no máximo", tabela_fornecedores$capacidade[i],"unidades. \n" )
        }  
        
        
        
      }
      
      
    } #fim do for
    
    print(" ----- Revise seu pedido ------ \n")
    tabela_fornecedores$Pedidos<-meus_pedidos
    print(tabela_fornecedores)
    
    print("---- DIGITE 0 (Continuar pedidos) ---- 1 (Finalizar pedido)")
    k<-scan(n=1)
    
  } #fim do while
  #retorna a tabela como resultado da função:
  return(tabela_fornecedores)
} #fim da função


novos_pedidos(nome="Isaias",tabela_fornecedores = tabela_f)


