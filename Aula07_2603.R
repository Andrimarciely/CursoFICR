install.packages("tidyverse")
install.packages("dplyr") 

library(tidyverse)
library(ggplot2)

  
plot (diamonds$cut)
x11()

tabble(diamonds$cut)

hist(diamonds$caract)

filter(between(diamonds$y,0,1))


min(diamonds$carat)