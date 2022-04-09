dados <- data.frame(Masc.Fum = c('49','64','37','52','68'))

dados<- cbind(dados, data.frame( Masc.N.Fum = c('27','58','52','41','30')))
dados<- cbind(dados, data.frame( Fem.Fum = c('54','61','79','64','29')))
dados<- cbind(dados, data.frame( Fem.N.Fum = c('40','39','44','34','44')))
print(dados)

#Total values column doesn't work and I don't know why
#dados <- cbind(dados, total = rowSums(dados))
#dados$total <- 2*(dados$total)
#print(dados)
