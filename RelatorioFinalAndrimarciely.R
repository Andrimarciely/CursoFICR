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


dados_repolhos <- data.frame(matrix(nrow = 2,ncol = 8), row.names = c("Peso", "VitC"))

colnames(dados_repolhos) <- c("Média", "Mediana","Mínimo", "Máximo", "Amplitude Total", 
                            "Variância","Desvio Padrão","Coef. Var. (%)") 
print(dados_repolhos)


# OBTENÇÃO DOS DADOS DA SEÇÃO 2.2 MEDIDAS DE RESUMO


print("A respeito das 60 amostras de cultivo de repolho, temos que:")

# TABELA 1

# MÉDIA
print("A média de peso é:")

print(mean(repolhos$Peso))
print("A média de Vitamina C é:")
print(mean(repolhos$VitC))

# MEDIANA
print("A mediana do peso é:")
print(median(repolhos$Peso, na.rm = FALSE))
print("A mediana da Vitamina C é:")
print(median(repolhos$VitC, na.rm = FALSE))

# MÍNIMO
print("O mínimo do peso é:")
print(min(repolhos$Peso))

print("O mínimo da Vitamina C é:")
print(min(repolhos$VitC))

# MÁXIMO
print("O máximo do peso é:")
print(max(repolhos$Peso))

print("O máximo da Vitamina C é:")
print(max(repolhos$VitC))

# AMPLITUDE
print("A amplitude do peso é:")
print(max(repolhos$Peso) - min(repolhos$Peso))

print("A amplitude da Vitamina C é:")
print(max(repolhos$VitC) - min(repolhos$VitC))

# VARIÂNCIA
print("A variancia do Peso é:")
print(var(repolhos$Peso))

print("A variancia de VitC é:")
print(var(repolhos$VitC))

# DESVIO PADRÃO
print("O desvio padrão do Peso é:")
print(sd(repolhos$Peso))

print("O desvio padrão de VitC é:")
print(sd(repolhos$VitC))

# COEFICIENTE DE VARIAÇÃO
print("O coeficiente de variação do Peso é (%):")
cvPeso = (sd(repolhos$Peso)*100)/mean(repolhos$Peso)
print(cvPeso)

print("O coeficiente de variação de VitC é (%):")
cvVitC = (sd(repolhos$VitC)*100)/mean(repolhos$VitC) 
print(cvVitC)

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

repolhoS_c39 <- filter(repolhos, repolhos$Cult == "c39")

print(table(repolhos$Cult))

#Histograma

classes <- table(cut_width(repolhos$VitC, 10))
cbind(classes)
hist(classes)


print(repolho_c39)

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
