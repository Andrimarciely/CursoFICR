#O conjunto de dados de repolhos tem 60 observações e 2 variáveis:
  
#  Cult Cultivar O conjunto de dados de repolhos tem 60 observações e 2 variáveis:
  
#Cult Cultivar do repolho com dois níveis: c39 e c52.

#Peso Peso da cabeça de repolho, presumivelmente em kg.

#VitC Teor de ácido ascórbico, em unidades indefinidas, do repolho com dois níveis: c39 e c52.

setwd("E:\IFAM 6o Periodo 2_0\FIC_Programacao_em_R\CursoFICR")

dados_repolho <- data.frame(read.table("repolhos.csv", header = TRUE, sep =";", dec = ","))

print(dados_repolho)

#library(ggplot2)
#plot(dados_repolho$Cult)
print("A respeito das 60 amostras de cultivo de repolho, temos que:")
print("A média de peso é:")
print(mean(dados_repolho$Peso))
print("A média de Vitamina C é:")
print(mean(dados_repolho$VitC))

print(summary(dados_repolho))

?summary()

print(mean(dados_repolho$VitC))

print(mean(dados_repolho$Peso))
