#Creamos el vector con los datos
poker_money <- c(140, -50, 20, -120, 240)
# Asignamos nombres con los días de la semana
names(poker_money) = c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
# Creamos el gráfico de barras
barplot(poker_money, main = "Resultados de Jugar Poker en la Semana",
    xlab = "Dias de la Semana", ylab= "Dinero", name.arg = names(poker_money),
    col = rainbow(5)
    )