# Instituto Federal de Educação, Ciência e Tecnologia do Amazonas
# Projeto Aranouá -  Cursos de Formação Inicial e Continuada (FIC)
# Introdução à Linguagem R para Ciência de Dados

# Script para gerar resultados de Relatório Final de curso
# Professora Msc. Yana Miranda Borges
# Relatório Final de Curso
# Aluna Andrimarciely Silva de Souza
# Criado: 07/04/2022
# Atualizado: 10/04/2022


# O conjunto de dados de repolhos tem 60 observações e 2 variáveis:
# Cult Cultivar do repolho com dois níveis: c39 e c52.
# Peso Peso da cabeça de repolho, presumivelmente em kg.
# VitC Teor de ácido ascórbico, em unidades indefinidas

# IMPORTAÇÃO DOS DADOS

setwd("E:\IFAM 6o Periodo 2_0\FIC_Programacao_em_R\CursoFICR")

repolhos <- data.frame(read.table("repolhos.csv", header = TRUE, sep =";", dec = ","))

print(repolhos)

dados_repolhos_c39 <- data.frame(matrix(nrow = 8,ncol = 2,
    row.names = c("Média", "Mediana","Mínimo", "Máximo", "Amplitude Total", 
                "Variância","Desvio Padrão","Coef. Var. (%)")))

colnames(dados_repolhos_c39) <- c("Peso", "VitC")
print(dados_repolhos_c39)