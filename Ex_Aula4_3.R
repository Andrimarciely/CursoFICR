# Curso de Introdu��o a R - FIC - Aranou�
# Autora: Andrimarciely
# Data de cria��o: 11/03/2022
# Professora Yana Miranda Borges

# Exercicio 3

sub_beaver1 = beaver1 %>% slice (1:3)
sub_beaver2 = beaver2 %>% slice (1:3)


print(sub_beaver1)

print(sub_beaver2)

castor <- merge(sub_beaver1,sub_beaver2,by ="activ")

print(castor)

name