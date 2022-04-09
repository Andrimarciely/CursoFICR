#dir_arquivo = getwd() #onde tem que estar o arquivo
#nome_arquivo = "quanti_exemplo_plan.xlsx"
#datafile = paste(dir_arquivo,"/",nome_arquivo)


quadratico <- data.frame(read.table("quanti_exemplo_plan.xlsx", header = TRUE, sep =";", dec = ","))

print(quadratico)