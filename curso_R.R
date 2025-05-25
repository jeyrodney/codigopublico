#-------primer Script--------

#hipotenusa
hipotenusa <- sqrt(3**2 + 6**2)

#indice masa corporal
imc <- 72/(1.75**2)

#---------ejercicio celsius-------

c <- 30
f <- c*(9/5)+32
f

#--------Tipos Datos Numeric----------

#Numeric

positivo <- 20

positivo + 10
positivo - 5
positivo /4

#Modulo o residuo de division

positivo%%5
positivo%%6
positivo%%7

#Enteros negativos

negativo <- -15
negativo * -1
negativo ** 2

#decimales

decimal <- 2.7828
ceiling(decimal)
floor(decimal)
trunc(decimal)

trunc(decimal*100)/100


#---------Tipos Datos String-------------

#String

usuario <- "OkabeRintarou"

"Cuantos caracteres tiene el nombre de usuario"
nchar_usuario <- nchar(usuario)

#Convertir a mayusculas o minuscualas todo el string
tolower(usuario)
toupper(usuario)

#Obtener un pedazo (substring) del string
substr(usuario, 1, 5)
substr(usuario,6,nchar_usuario)

#Sustituir valores string
sub("a", "A", usuario) #Solo primer coincidencia
gsub("a","A",usuario) #Todas las coincidencias

#Pegar (concatenar) dos o mas strings
paste("Mi nombre de usuario es:", usuario, sep="--")

#----------Ejercicio String-----------------

mensaje <- "Don Draper lucha por mantenerse en la cima del grupo Sterling-Cooper"

mensaje_mod <- sub("Don Draper", "Richard Whitman", mensaje)

paste("En la serie Madmen:", mensaje_mod, sep=" ")


#-------------------------------------
# logical
#------------------------------------

#los posibles valores logicos
TRUE
FALSE

#Nuestra calificacion en el primer examen
calificacion_examen1 <-  8.5

#Obtuvimos 10?
calificacion_examen1 == 10

#aprobamos?
calificacion_examen1 >= 6

#obtuvimos calificacion > 6 y <8?
calificacion_examen1 > 6 & calificacion_examen1 < 8

#realizamos un 2do examen
calificacion_examen2 <- 5.9

#validar la no igualdad
calificacion_examen1 != calificacion_examen2

#Nombre de usuario en League of Legends
usuario <- "xXNoobKillerXx"

#Validar igualdad
usuario == "Faker"

#Validar el numero de caracteres
val_numchar <- nchar(usuario) > 10

#Validar que no contenga una palabra en particular
val_noob <- !grepl("Noob", usuario)

#validar que no comience con .
val_punto <- substr(usuario,1,1) != "."
val_punto

#Validar que cumpla con las tres condiciones anteriores
val_numchar & val_noob & val_punto

#sumando valores logicos
TRUE == 1
FALSE == 0
TRUE + TRUE + FALSE + FALSE + TRUE


#---------------------------
#--EJERCICIO VALORES LOGICOS
#----------------------------

usuario = "RIOT Mictlan"

#forma larga con variables
val_num_char = nchar(usuario)<10
val_riot <- !grepl("RIOT", usuario)
val3 <- usuario != "ELVaipa" & usuario != "Ixtli"

val_num_char & val_riot & val3

#forma corta sin variables
nchar(usuario)<10 & !grepl("RIOT", usuario) & (usuario != "ELVaipa" & usuario != "Ixtli")


#--------------------------------------
#             Vectores
#--------------------------------------

#------- Definición de vectores

# Vector numerico
vistas <- c(8321, 2974, 5792, 4932, 4889, 7433, 6651)

# Vector de caracteres
nombres <- c("Video 1", "Video 2", "Video 3", "Video 4", "video 5", "Video 6", "Video 7")

#Cuantos videos hay?
length(vistas)

#Cuantas vistas tiene el video mas visto?
max(vistas)

#cuantas vistas tiene el video menos visto?
min(vistas)

#Cuantas vista, en promedio, tienen los videos en el canal?
mean(vistas)

#En total, cuantas vistas tiene el canal?
sum(vistas)

#Operaciones aplicadas al vector
vistas + 1000
vistas / 500
log(vistas)
nchar(nombres)

#Subimos un nuevo video al canal
vistas <- c(vistas, 5600)
nombres <- c(nombres, "Video 8")

#Ponerle nombre a las entradas de un vector, usando el otro vector
names(vistas) <- nombres

#Ordenar un vector numerico
sort(vistas) #ordena el vector de menor a mayor
?sort #para mostrar info de ayuda sobre la función

sort(vistas, decreasing = TRUE)


#-------------Condiciones logicas sobre vectores-------

#Que videos tienen mas de 6000 vistas?
vistas > 6000

#Cuantos videos tienen mas de 6000 vistas?
sum(vistas > 6000)

#Algún video tiene mas de 8000 vistas?
any(vistas > 8000)
#Algún video tiene mas de 10000 vistas?
any(vistas > 10000)

#Todos los videos tienen mas de 2000 vistas?
all(vistas > 2000)
#Todos los videos tienen mas de 5000 vistas?
all(vistas > 5000)

#Que videos tienen menos de 5000 vistas?
which(vistas < 5000)

#--------- Como obtener un subconjunto de un vector

# Especificando cuales quiero (Enteros positivos)
vistas[c(2,4)] #se obtiene los datos de las pocisiones 2 y 4
vistas[3] #se obtiene solo la posición 3

#Especificando cuales no quiero (Enteros negativos)
vistas[-4] #muestra todos menos la posición 4
vistas[-c(2,4)] #muestra todos menos las posiciones 2 y 4

#Especificando cuales quiero (Valores logicos)
vistas[c(FALSE,TRUE,FALSE,TRUE,FALSE,FALSE,FALSE)]
vistas[vistas > 7000]
vistas[ vistas > 4000 & vistas < 5000]

#Mediante el nombre de la entrada
vistas[c("Video 2", "Video 4")]

#Como modificar una o mas entradas de un vector
vistas
vistas[1] <- 500
vistas[vistas > 7000] = 7000 #Todas los campos del vector que tengan valores mayores a 7000 se reemplazan por 7000



#------- Utilizando los vectores como conjuntos

# Videojuegos de una amio y yo
yo <- c("GTA V","Mortal Kombat","Zelda", "Skyrim")
amigo <- c("Mario Kart", "Zelda", "Devil May Cry", "GTA V")

#Que videojuegos tenemos entre los dos?
c(yo, amigo) #esto solo concatena los conjuntos/vectores dejando valores repetidos
union(yo,amigo) #este une los vectores sin dejar valores repetidos

# Que videojuegos tenemos en comun?
intersect(yo, amigo)

#Que videojuegos tengo yo que no tenga el?
setdiff(yo, amigo)

#Teenmos los mismos videojuegos?
setequal(yo, amigo)

#Mi amigo tiene el videojuego Zelda?
"Zelda" %in% amigo

# Mi amigo tiene los videojuegos de Age of Empires o Mario Kart?
c("Age of Empires", "Mario Kart") %in% amigo


#----------- Otra manera de generar vectores (Deterministas)

# Utilizando el operador ":", este operador solo crea sucesiones que aumentan o disminuyen de 1 en 1
1:50
20:1
-5:5

# Utilizando la función seq
seq(from=0, to=50, by=0.5)

# A partir de un caracter
juego <- "Mortal Kombat"
#split separa caracteres o palabras usando un caracter, en este caso separo palabras usando espacio
#al agregarle [[1]] guarda la lista como un vector
split <- strsplit(juego, " ")[[1]]
class(split)

#Ahora este caso separo palabras usando sin espacio, osea caracter por caracter
#al agregarle [[1]] guarda la lista como un vector
split <- strsplit(juego, "")[[1]]

any(split == "o") #buscar un carater en la variable que tiene separados los caracteres


#-------------- Otra manera de generar vectores (Aleatoria)

# Obteniendo muestras
resultados <- c("Victoria","derrota")
sample(resultados) #muestra los datos de forma aleatoria
sample(resultados, size = 1) #muestra los datos de forma aleatoria pero solo 1 posición
sample(resultados, size = 10) #ERROR, solo hay 2 pocisiones y se le pide 10 aleatorios. Para poder hacerlo, hay que dalre la linea siguiente:
sample(resultados, size = 10, replace = TRUE) #con replace ahora el mostrará 10 pocisiones reemplazando de la 3 hsata la 10 con la población entregada (2 datos)
sample(resultados, size = 10, replace = TRUE, prob = c(0.3, 0.7))#con prob se le indica que la posición 1 tenga 30% de probabilidad de aparecer y la posición 2 un 70% 

# Distribuciones de probabilidad

#20 valores al azar de una distribución uniforme continua en el intervalo de 0 a 2
runif(n=20, min=0, max=2)
#20 valores al azar de una distribución normal con media 20 y desviación standar 2
rnorm(n=20, mean=15, sd=2)
#20 valores al azar de una distribución bernuli con p = 0.5
rbinom(n=20, size=1, p=0.5)
#20 valores al azar de una distribución binomial con n = 5 y p=0.5
rbinom(n=20, size=5, p=0.5)

#Fijando la semilla
set.seed(123)
runif(n = 1)


#---------- Vectores a partir de diferentes tipos de datos?

ejemplo <- c(3.1415, TRUE, "God of War") #Todos serían String


#-------------- Ejercicio: Cuantos numeros entre 1 y 1'000.000 son divisibles entre 6 y 8?------
#Hay varias formas de hacerlo

numeros <- 1:1000000

#opcion 1
divisibles <- numeros[(numeros%%6 == 0) & (numeros%%8 == 0)]
length(divisibles)

#opción 2
sum(numeros%%6 == 0 & numeros%%8 == 0)


#Ejercicio Vectores 1
#Cuantos numeros entre 1 y 1'000.000 son divisibles entre 6 y 8?

#Hay varias formas de hacerlo

numeros <- 1:1000000

#opcion 1
divisibles <- numeros[(numeros%%6 == 0) & (numeros%%8 == 0)]
length(divisibles)

#opción 2
sum(numeros%%6 == 0 & numeros%%8 == 0)


# ------- Ejercicio Vectores 2: -------------

set.seed(123)
compras <- rnorm(n = 10000,mean = 5000, sd = 1000)

#Cuales son los montos de las compras en las entradas 435 y 678?
compras[c(435,678)]

#Cuantas compras fueron mayores a 8000 dolares?
sum(compras>8000)

#Cuales fueron el monto máximo y el mínimo?
max(compras)
min(compras)

#Que porcentaje de compras fueron entre 4000 y 6000 dolares?
(sum(compras>=4000 & compras<=6000) / length(compras)) * 100


#--------- Ejercicio Vectores 3 -----------

usuario <-"NoobSlayer9"

  #-Genere un código que regrese TRUE si usuario contiene al menos un número

any(strsplit(usuario, split = "")[[1]] %in% 0:9)
  
  #-Genere un código que regrese TRUE si usuario contiene solamente números

all(strsplit(usuario, split = "")[[1]] %in% 0:9)



# ------------------------------------------------
#           Conversion de tipos de datos
# ------------------------------------------------

#-------- De númerico a caracter o logico

# De númerico a caracter
as.character(5.6)
as.character(-5.46)

#De numerico a logico
as.logical(10) #Cualquier número diferente de cero será TRUE
as.logical(0) #El cero es el único valor que se convierte en FALSE

#------- De logico a caracter o numerico

# De Logico a caracter
as.character(TRUE) #Resultado, se convierte en string "TRUE"
as.character(FALSE) #Resultado, se convierte en string "FALSE"

# De Logico a numerico
as.numeric(TRUE) #El resultado es 1
as.numeric(FALSE) #El resultado es 0

#----------- De caracter a logico o numerico

# De caracter a numerico
as.numeric("244")
as.numeric("matematicas") #Error NA, R no sabe que hacer con ese valor, que en realidad es un string

# De Caracter a logico
as.logical("TRUE")
as.logical("matematicas") #Error NA

#----------- En un vector

vec <- c("1", "2", "3", "4", "5")
as.numeric(vec)


#---------------------------------------------
#       Condicionales IF
#---------------------------------------------

#Un primer condicional
condicion <- FALSE
if(condicion){
  print("Esto se imprimirá si condición es TRUE")
}else{
  print("Esto se imprimirá si condición es FALSE")
}

#calculando el rango de un ajeresista
elo <- 80

if(elo >= 750){
  rango <- "Gran Maestro"
}else if(elo >= 500){
  rango <- "Maestro"
}else if(elo >= 250){
  rango <- "Profesional"
}else{
  rango <- "Novato"
}

print(rango)


# IF ELSE
numeros <- 1:10

#hace una validación y de inmediato una asignación con lo que se cumple (param 2)
#y con lo que no se cumple (param 3)
ifelse(numeros %% 2 == 0,"par","impar")

