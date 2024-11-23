#### Operadores Lógicos de Igualdade e Desigualdade

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)
resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)
resumo$quant_Jan[5]<-100
resumo$quant_Fev[2:4]<-c(640,75,60)
resumo$quant_Mar[c(1,4)]<-c(130,400)
resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")
resumo$quant_Jan <- as.numeric(resumo$quant_Jan)
resumo$quant_Fev <- as.numeric(resumo$quant_Fev)
resumo$quant_Mar <- as.numeric(resumo$quant_Mar)

# Igualdade

resumo$quant_Jan[2] == 100
resumo$fornecedores[2] == "Zaeli"

sum(resumo$quant_Jan[2]) == 400
sum(resumo$quant_Jan[2]) == 230  

# Desigualdade

resumo$quant_Jan[2] != 100
resumo$fornecedores[2] != "Zaeli"

sum(resumo$quant_Jan[2]) != 400


# Operadores Lógicos "Comparativos" ou relacionais

# > <   >=  <=
  
  # > 
  resumo$quant_Jan[2] > 200

resumo$quant_Mar[2] > 500

# <
resumo$quant_Jan[3] < 200
200 < resumo$quant_Jan[3] 

# <=
resumo$quant_Fev[4] <= 90
resumo$quant_Fev[3] <= 40


# >=
resumo$quant_Fev[4] >= 90
resumo$quant_Fev[4] >= 40



##Operadores Lógicos:
#### " e " &

(resumo$quant_Mar[3] > 300 ) & (resumo$quant_Mar[3] < 200)
(resumo$quant_Mar[3] < 300 ) & (resumo$quant_Mar[3] < 200)

# TRUE & TRUE   = TRUE
# FALSE & TRUE   = FALSE

#### "ou" |

(resumo$quant_Fev[4]==60) | (resumo$quant_Fev[2]>=650)    
# TRUE | TRUE   = TRUE
# TRUE | FALSE   = TRUE
# FALSE | FALSE  = FALSE



