rm(list = ls())
setwd("E:/IFAM 6o Periodo 2_0/FIC_Programacao_em_R")

dados <- data.frame(read.table("Aula5_PlanEx_Q1.csv", header = TRUE, sep =";", dec = ","))

dados <- cbind(dados, total = rowSums(dados))

dados$total <- 2*(dados$total)

print(dados)

write.table(dados, file = "Aula05_OutputQuestao2.csv")
