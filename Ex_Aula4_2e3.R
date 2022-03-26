# Curso de Introdução a R - FIC - Aranouá
# Autora: Andrimarciely
# Data de criação: 11/03/2022
# Professora Yana Miranda Borges


# ********************Exercicio 2*******************

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


# ********************Exercicio 3*******************

#Questão a

#Criação de dois objetos 

sub_beaver1 = beaver1 %>% slice (1:3)
sub_beaver2 = beaver2 %>% slice (1:3)


print(sub_beaver1)

print(sub_beaver2)

#Mesclagem com chave activ

castor <- merge(sub_beaver1,sub_beaver2,by ="activ")

#Renomeação das colunas 

castor = rename(castor,c( a = day.x, b = time.x, c = temp.x, d = day.y , e = time.y, f = temp.y))

print(castor)

#Questão b

lista3b <- list(petalas, castor)
names(lista3b) <- c("petalas", "castor")

print(lista3b)


#Questão c

quinto = lista3b [[1]][[1]][[5]]

print(quinto)

qtdcolunas = ncol(lista3b[[2]])

print(qtdcolunas)

oitavo = lista3b [[2]][[qtdcolunas-1]][[8]]

print(oitavo)

vetor3c <- c(quinto, oitavo)

print(vetor3c)

