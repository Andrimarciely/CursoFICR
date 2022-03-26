
# Questão 1

for (i in 1:100){
  print(atan(1/i))
}

#Questão 2

for (x in 1:10){
  
  y <- atan (1/x)
  
  # Questão 1
  
  for (i in 1:100){
    print(atan(1/i))
  }
  
  #Questão 2
  
  for (x in 1:10){
    
    y <- atan (1/x)
    
    z <- 1/tan(y)
    k <- round(z)
    w <- y-k
    absw <- abs(w)
    
    sprintf("Y =", y)
    sprintf ("Z = ",z)
    sprintf ("K = ",k)
    sprintf ("W abs", absw)
    
  }
  
  
  
  z <- 1/tan(y)
  k <- round(z)
  w <- y-k
  absw <- abs(w)
  
  sprintf("Y =", y)
  sprintf ("Z = ",z)
  sprintf ("K = ",k)
  sprintf ("W abs", absw)
  
}


# Questão 3