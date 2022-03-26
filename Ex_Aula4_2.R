# Curso de Introdução a R - FIC - Aranouá
# Autora: Andrimarciely
# Data de criação: 11/03/2022
# Professora Yana Miranda Borges



# Exercicio 2

library("dplyr")

# Novo dataframe com a 3a e 4a colunas
petalas <- data.frame( iris [["Petal.Length"]], iris [["Petal.Width"]])

#Sub dataframe com as seis primeiras linhas
petalasA <- petalas %>% slice (1:6)


#Calculo para os limites das últimas seis linhas
lim2 = nrow(iris)
lim1 = nrow(iris) - 6

#Sub dataframe com as últimas seis linhas
petalasB <- petalas %>% slice (lim1:lim2)

#dataframe petalas completo
petalas <- rbind(petalasA,petalasB)

#Renomeação as colunas
colnames(petalas)<- c("comprimento", "largura")

print(petalas)

#Cálculo das médias das variáveis
media_comprimento = mean(petalas[["comprimento"]])
media_largura = mean(petalas[["largura"]])

print(media_comprimento)
print(media_largura)