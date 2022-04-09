dados <- data.frame(condicao = c('fumante'), masculino = c('49','64','37','52','68'),
                    feminino = c('54','61','79','64','29'))

print(dados)

dados<- rbind(dados, data.frame(condicao = c('nao fumante'), 
                                masculino = c('27','58','52','41','30'),
                                feminino = c('40','39','44','34','44')))
print(dados)

total = colSums(dados$masculino)

print(total)