# Curso de Introdução a R - FIC - Aranouá
# Autora: Andrimarciely
# Data de criação: 11/03/2022
# Data de alteração: 13/03/2022
# Professora Yana Miranda Borges

# Exercicio 1



# Verifica se um número é número primo

ehprimo <- function(numero){
  
  eprimo = FALSE
  
  if (numero > 1){
    
    eprimo = TRUE
    
    for(i in 2:(numero-1)){
      
      if ((numero %% i) == 0){
        
        eprimo = FALSE
        
        break
      }
    }
  }
  
  if (numero == 1){
    
    eprimo = FALSE
    
  }
  
  if (numero == 2){
    
    eprimo = TRUE
    
  }
  
  return(eprimo)
  
}

# Gera a quantidade de numeros primos desejada

gera_n_primos <- function(quantidade){
  
  lista_de_primos = c()
  
  primos_gerados = 0
  
  numero = 2
  
  while (primos_gerados < quantidade){
    
    if (ehprimo(numero)){
      
        lista_de_primos = c(lista_de_primos, numero)
        
        primos_gerados = primos_gerados + 1 
        
    }
    
    numero = numero + 1
    
  }
  
  return(lista_de_primos)
  
}

#Gera a quantidade de pares de primos gêmeos

gera_n_primos_gemeos <- function(nprimosgemeos){

   primos_gemeos = 0

   lista_de_primos_gemeos = c()

   lista_de_primos = gera_n_primos(nprimosgemeos*5)

   print(lista_de_primos)
   i = 2

  repeat {
    print(lista_de_primos[i])
    print(lista_de_primos[i-1])
    if (lista_de_primos[i]-lista_de_primos[i-1] == 2){
       lista_de_primos_gemeos<- c(lista_de_primos_gemeos, c(lista_de_primos[i-1], lista_de_primos[i]))
       print(lista_de_primos_gemeos)
       primos_gemeos = primos_gemeos + 1
    }
    i = i + 1
    if ((primos_gemeos == nprimosgemeos) || ( i >= nprimosgemeos*5)) {
      return(lista_de_primos_gemeos)
      break
      }
  }

}


sete_primo <- gera_n_primos(7)

quatro_gemeos <- gera_n_primos_gemeos(4)

primo_par_dif2 <- NULL

resultado <- list(sete_primo, quatro_gemeos, primo_par_dif2)
names(resultado) <- c("A", "B","C")

print(resultado)

