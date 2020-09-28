#Importar base de datos

View(DISCAPACIDAD)

#Nombrar los datos con el nombre de la primera columna llamada ESTADO
row.names(DISCAPACIDAD) <- DISCAPACIDAD$ESTADO

View(DISCAPACIDAD)

#Borrar la primera columna

DISCAPACIDAD <- DISCAPACIDAD[,2:6]

View(DISCAPACIDAD)

#Convertir a una matrix

PCD <- data.matrix(DISCAPACIDAD)

View(PCD)

class(PCD)

library("RColorBrewer")

# paleta de colores que va del blanco al rojo oscuro
  
Colores_PCD <- brewer.pal(9,"Reds")

image(1:5,1,as.matrix(1:5), col=mipaleta, xlab="Leyenda", ylab="", xaxt="n", yaxt="n", bty="n")


#Crear el heatmap
heatmap(PCD, scale = "colum")

#Cambiar colores

heatmap(PCD, 
        scale = "colum",
        col = Colores_PCD)


#Incluir leyendas
heatmap(PCD, 
        scale = "colum",
        col = Colores_PCD ,
        Colv = NA,
        margins = c(5,10),
        xlab = "Población", 
        ylab = "Estados",
        main = "Concentración PCD")




