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


dados_repolhos <- data.frame(row.names = c("Peso", "VitC"))

#colnames(dados_repolhos) <- c("Media", "Mediana","Mínimo", "Maximo", "AmpTotal", 
#                            "Variancia","DesvioPadrão","CoefVar") 
print(dados_repolhos)



# OBTENÇÃO DOS DADOS DA SEÇÃO 2.2 MEDIDAS DE RESUMO


print("A respeito das 60 amostras de cultivo de repolho, temos que:")

# TABELA 1

# MÉDIA

dados_repolhos$Media <- c(mean(repolhos$Peso),
                          mean(repolhos$VitC))

# MEDIANA

dados_repolhos$Mediana <- c(median(repolhos$Peso, na.rm = FALSE),
                            median(repolhos$VitC, na.rm = FALSE))

# MÍNIMO

dados_repolhos$Minimo <- c(min(repolhos$Peso),
                               min(repolhos$VitC))

# MÁXIMO
dados_repolhos$Maximo <- c(max(repolhos$Peso),
                           max(repolhos$VitC))

# AMPLITUDE

dados_repolhos$Amplitude <- c(max(repolhos$Peso) - min(repolhos$Peso),
                              max(repolhos$VitC) - min(repolhos$VitC))

# VARIÂNCIA
dados_repolhos$Variancia <- c(var(repolhos$Peso),
                              var(repolhos$VitC))

# DESVIO PADRÃO
dados_repolhos$Desvio.Padrao <- c(sd(repolhos$Peso),
                              sd(repolhos$VitC))

print(dados_repolhos)

# COEFICIENTE DE VARIAÇÃO

dados_repolhos$Coef.Variacao <- c((sd(repolhos$Peso)*100)/mean(repolhos$Peso),
                                  (sd(repolhos$VitC)*100)/mean(repolhos$VitC))

print(dados_repolhos)


# TABELA 2 MODA 

print("Moda")

# MODA VARIÁVEL PESO

#Lista todos os valores da variável Peso de repolhos e com qual frequencia aparecem no conjunto

print(table(repolhos$Peso))

#Exibe a maior frequencia existente em repolhos na variavel VitC
print(max(table(repolhos$Peso)))

#Faz um subconjunto da lista de frequencias de valores para VitC , separando
#todos aqueles que são iguais a maior frequencia
modaPeso <- subset(table(repolhos$Peso), table(repolhos$Peso) == max(table(repolhos$Peso)))
print(modaPeso)



# MODA VARIÁVEL VITC

#Lista todos os valores da variável VitC de repolhos e a frequencia que aparecem no conjunto

print(table(repolhos$VitC))

#Exibe a maior frequencia existente em repolhos na variavel VitC
print(max(table(repolhos$VitC)))

#Faz um subconjunto da lista de frequencias de valores para VitC , separando
#todos aqueles que são iguais a maior frequencia
modaVitc <- subset(table(repolhos$VitC), table(repolhos$VitC) == max(table(repolhos$VitC)))

#ALGUNS DESSES DADOS PODEM SER CONFERIDOS COM O COMANDO SUMMARY

print(summary(repolhos))

# DIVISÃO DOS DADOS EM DOIS GRUPOS 

repolhos_c39 <- subset.data.frame(repolhos, repolhos$Cult == "c39", select = c("Peso", "VitC"))

print(repolhos_c39)

repolhos_c52 <- subset.data.frame(repolhos, repolhos$Cult == "c52", select = c("Peso", "VitC"))

print(repolhos_c52)



#Histograma

classes <- table(cut_width(repolhos$VitC, 10))
cbind(classes)
hist(classes)



?summary()
?apply()



#Plotagem dos gráficos
library(ggplot2)

barplot(repolhos$VitC)

table(repolhos)

plot(repolhos$Cult)

hist(repolhos$Peso,main= NULL,
     breaks = seq(0.0,5,0.5))

hist(repolhos$VitC,main= NULL,
     breaks = seq(41,84,1))


#Imagem 1
ggplot(repolhos, aes(x = Peso, y = VitC)) +geom_point()

#Imagem 2
ggplot(data = repolhos, aes(repolhos$Peso, repolhos$VitC))+
  +   geom_point(aes(colour = repolhos$Cult))

#Analise de regressão

betas <- lm(repolhos$Peso ~ repolhos$VitC)
betas$coefficients

betas$coefficients[1] #beta zero
betas$coefficients[2] #beta 1

# y = b0 + b1x 
#y = 5.928059 + -0.05754488 * x

yi = 5.928059 + -0.05754488 * 1
yii = 5.928059 + -0.05754488 * 4.3

print(yi)
print(yii)

#Imagem 3

g1 <- ggplot(data = repolhos, aes(x = Peso, y = VitC))
g1 + geom_point(color = "blue", size = 2) +
  theme_gray(base_size = 18) +
  xlab("Peso (kg) repolho") + ylab("Teor de Vitamina C(UI)") + 
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  annotate(geom = "text", x = 1, y = 5.87, label = expression((hat(y) == 5)))

#OBTENÇÃO DA REFERÊNCIA BIBLIOGRÁFICA
citation()
