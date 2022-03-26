rm(list = ls())
setwd("E:/IFAM 6o Periodo 2_0/FIC_Programacao_em_R")

dados <- data.frame(read.table("Aula5_PlanEx_Q1.csv", header = TRUE, sep =";", dec = ","))
print(dados)

dados <- data.frame(dados, dados["Masc.Fum"]+ dados["Masc.N.Fum"])
print(dados)