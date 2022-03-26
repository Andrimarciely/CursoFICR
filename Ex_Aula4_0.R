# Curso de Introdução a R - FIC - Aranouá
# Autora: Andrimarciely
# Data de criação: 11/03/2022
# Professora Yana Miranda Borges


# ********************Exercicio *******************

v_alta <- c(15,32)
v_baixa <- c(18,8)
especie_planta = rbind(v_alta,v_baixa)

rownames(especie_planta)<- c("Alta", "Baixa")
colnames(especie_planta)<- c("Floresta", "Duna")

print(especie_planta)

# Totais
totais_ambientes = colSums(especie_planta)

print(totais_ambientes)

totais_herbivoria = rowSums(especie_planta)

print(totais_herbivoria)


# Médias Marginais
medias_ambientes = colMeans(especie_planta)

print(medias_ambientes)

medias_herbivoria = rowMeans(especie_planta)

print(medias_herbivoria)