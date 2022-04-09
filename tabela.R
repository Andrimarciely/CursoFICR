library(xtable)
setwd("E:\IFAM 6o Periodo 2_0\FIC_Programacao_em_R\CursoFICR")

dados_repolho <- data.frame(read.table("repolhos.csv", header = TRUE, sep =";", dec = ","))

print(dados_repolho)


frequen<- table(resposta)[c(2,1,4,5,3)]
frequencia <- data.frame(names(frequen), frequen)
rownames(frequencia) <- NULL
colnames(frequencia) <- c("resoista","freq")
print(xtable(frequencia, caption = "Questionário ano 2012", label = "tab:tabelas2"), 
      table.placement = "H", caption.placement = "top", latex.enviroments = "flushleft",
      include.rownames = FALSE , hline.after = c (−1, 0 ) , add.to. row
      = l i s t ( pos = l i s t ( 5 ) ,
                  command = c ( "\\ h l i n e \\m ul ti c ol um n { 2 } { p { 4 cm } } \ n {\\
f o o t n o t e s i z e \nFon t e : Dados h i p o t é t i c o s . } " ) ) )
