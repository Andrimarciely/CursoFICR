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

# A obtenção da moda através do comando abaixo não satisfez por ter amostra multimodal
# na variável VitC

freq_peso <- sort(table(repolhos$VitC), decreasing = TRUE)
freq_peso[1]

# Portanto foi utilizada outro metodo a seguir


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

dados_repolhos_c39 <- data.frame(row.names = c("Peso", "VitC"))
dados_repolhos_c52 <- data.frame(row.names = c("Peso", "VitC"))


# RESUMO DE DADOS DOS DOIS GRUPOS DE CULTIVO DE REPOLHO

# RESUMO DE C39

# MÉDIA

dados_repolhos_c39$Media <- c(mean(repolhos_c39$Peso),
                              mean(repolhos_c39$VitC))

# MEDIANA

dados_repolhos_c39$Mediana <- c(median(repolhos_c39$Peso, na.rm = FALSE),
                                median(repolhos_c39$VitC, na.rm = FALSE))

# MÍNIMO

dados_repolhos_c39$Minimo <- c(min(repolhos_c39$Peso),
                               min(repolhos_c39$VitC))

# MÁXIMO
dados_repolhos_c39$Maximo <- c(max(repolhos_c39$Peso),
                               max(repolhos_c39$VitC))

# AMPLITUDE

dados_repolhos_c39$Amplitude <- c(max(repolhos_c39$Peso) - min(repolhos_c39$Peso),
                                  max(repolhos_c39$VitC) - min(repolhos_c39$VitC))

# VARIÂNCIA
dados_repolhos_c39$Variancia <- c(var(repolhos_c39$Peso),
                                  var(repolhos_c39$VitC))

# DESVIO PADRÃO
dados_repolhos_c39$Desvio.Padrao <- c(sd(repolhos_c39$Peso),
                                      sd(repolhos_c39$VitC))

# COEFICIENTE DE VARIAÇÃO

dados_repolhos_c39$Coef.Variacao <- c((sd(repolhos_c39$Peso)*100)/mean(repolhos_c39$Peso),
                                      (sd(repolhos_c39$VitC)*100)/mean(repolhos_c39$VitC))

# FIM RESUMO C39

# RESUMO DE C52

# MÉDIA

dados_repolhos_c52$Media <- c(mean(repolhos_c52$Peso),
                              mean(repolhos_c52$VitC))

# MEDIANA

dados_repolhos_c52$Mediana <- c(median(repolhos_c52$Peso, na.rm = FALSE),
                                median(repolhos_c52$VitC, na.rm = FALSE))

# MÍNIMO

dados_repolhos_c52$Minimo <- c(min(repolhos_c52$Peso),
                               min(repolhos_c52$VitC))

# MÁXIMO
dados_repolhos_c52$Maximo <- c(max(repolhos_c52$Peso),
                               max(repolhos_c52$VitC))

# AMPLITUDE

dados_repolhos_c52$Amplitude <- c(max(repolhos_c52$Peso) - min(repolhos_c52$Peso),
                                  max(repolhos_c52$VitC) - min(repolhos_c52$VitC))

# VARIÂNCIA
dados_repolhos_c52$Variancia <- c(var(repolhos_c52$Peso),
                                  var(repolhos_c52$VitC))

# DESVIO PADRÃO
dados_repolhos_c52$Desvio.Padrao <- c(sd(repolhos_c52$Peso),
                                      sd(repolhos_c52$VitC))

# COEFICIENTE DE VARIAÇÃO

dados_repolhos_c52$Coef.Variacao <- c((sd(repolhos_c52$Peso)*100)/mean(repolhos_c52$Peso),
                                      (sd(repolhos_c52$VitC)*100)/mean(repolhos_c52$VitC))



# FIM RESUMO DE C52

# IMPRESSÃO DOS RESUMOS DE MEDIDAS DE C39 E C52

print(dados_repolhos_c39)
print(dados_repolhos_c52)

# GRÁFICOS 


library(ggplot2)

# Gráfico de Barras

barplot(table(repolhos$Cult),
        col = c("#a1e9f0", "#d9b1f0"),
        xlab = "Cult",
        ylab = "Frequencia",
        main = "Imagem 2 - Gráfico de Barras Variável Cult ")

# Histograma

hist(repolhos$Peso,
     col = c("#b9e38d"),
     main = "Imagem 3 - Histograma Variável Peso")

hist(repolhos$VitC,
     col = c("#b9e38d"),
     main = "Imagem 4 - Histograma Variável VitC")


# Box-plot
# Verificar outliers

boxplot(repolhos$Peso,
        col = c("#b9e38d"),
        main = "Imagem 5 - Diagrama de Caixa Peso")

boxplot(repolhos$VitC,
        col = c("#b9e38d"),
        main = "Imagem 6 - Diagrama de VitC")

# Distribuição de dados

par(mfrow = c(1,3))
qqnorm(repolhos$Peso[repolhos$Cult == "c39"],col = "blue", main = "Imagem 7 - Peso C39")
qqline(repolhos$Peso[repolhos$Cult == "c39"])

par(mfrow = c(1,3))
qqnorm(repolhos$VitC[repolhos$Cult == "c39"],col = "blue", main = "Imagem 8 - VitC C39")
qqline(repolhos$VitC[repolhos$Cult == "c39"])


par(mfrow = c(1,3))
qqnorm(repolhos$Peso[repolhos$Cult == "c52"],col = "#6c043a", main = "Imagem 9 - Peso C52")
qqline(repolhos$Peso[repolhos$Cult == "c52"])

par(mfrow = c(1,3))
qqnorm(repolhos$VitC[repolhos$Cult == "c52"],col = "#6c043a", main = "Imagem 10 - VitC C52")
qqline(repolhos$VitC[repolhos$Cult == "c52"])


# CORRELAÇÃO E REGRESSÃO



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
