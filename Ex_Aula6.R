install.packages("vcd")

require("vcd")

data("Arthritis")
head(Arthritis)

sexo <-table(Arthritis$Sex)
pie(sexo)

pie(table(Arthritis$Sex))


count <- table(Arthritis$Improved)

barplot(count, horiz = "TRUE")