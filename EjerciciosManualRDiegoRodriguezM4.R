# Ejemplo 1.3
  # Vamos a representar 2 muestras de tamano 50 de una distribucion normal N(2,3)
  # Ademas calcularemos el coeficiente de correlacion
  x <- rnorm(50, 2, 3)
  y <- rnorm(50, 2, 3)
  plot(x, y)
  print(cor.test(x, y))
  # Asi se nos muestra el coeficiente de correlacion y 50 muestras de la distribucion normal N(2,3), 50 por cada variable



# Ejemplo 1.5.0
  # Este comando nos permite calcular la media la variable x anteriormente definida
  (media.x <- mean(x))
  # Devuelve: [1] 2.320787 (varia con cada muestra)
  # Si nos hubiera faltado el ultimo parentesis, devolveria lo siguiente
  #(media.x <- mean(x)
  # Devuelve: +
  # Se devolvera + hasta que se cierre el parentesis, y entonces devolvera el resultado

# Ejemplo 1.5.1 - Calculo
  # Este comando calcula e^2 y le suma 5 al resultado, mediante la funcion exp (exponencial)
  exp(2) + 5
  # Devuelve: [1] 12.38906

# Ejemplo 1.5.1 - Calculo
  # Estos dos comandos realizan operaicones aritmeticas teniendo en cuenta los parentesis
  7 - 5 * 4 + 3
  (7 - 5) * 4 + 3
  #Devuelven: [1] -10 y [1] 11

# Ejemplo 1.5.2 - Asignacion
  # Este comando asigna a la variable x una distribucion normal de media 2 y desviacion tipica 3, con 50 muestras
  # La segunda linea imprime las 50 muestras
  x <- rnorm(50, 2, 3)
  x
  # Devuelve: 50 muestras de la distribucion normal N(2,3)
  # Si anadimos la siguiente linea podemos guardar (y luego mostrar en la 2 linea) la media de las 50 muestras (variable media.x)
  media.x <- mean(x)
  media.x
  # Podemos calcular y mostrar de golpe la media de las 50 muestras con la siguiente linea (variable mean.x)
  (mean.x <- mean(x))
  # En mi caso, la media devuelta es 2.320787 (varia con cada muestra)
  # Si queremos borrar la variable que guarda la media, usamos el siguiente comando
  rm(media.x)
  # Con el siguiente comando podemos ver que la variable media.x ha sido borrada (nos muestra las variables que tenemos)
  objects()
  # En mi caso quedan estas variables: "mean.x" "x"      "y"  

# Ejemplo 1.5.2 (continuacion)
  # De una variable se puede conocersu tipo usando "mode( )", su longitud usando "length( )" y su estructura usando "str( )"
  # Probemos con x
  mode(x)
  length(x)
  str(x)
  mode(mean)
  # Devuelve: "numeric" 
  #           50 
  #           num [1:50] 5.51 3.55 1.54 6.52 4.45 ...
  #           "function"
  # Podemos hacer lo mismo con Nile, una serie temporal del flujo del rio Nilo
  Nile
  TimeSeries <- Nile
  Start = 1871
  End = 1970
  Frequency = 1
  # Devuelve: 
  # Time Series:
  # Start = 1871 
  # End = 1970 
  # Frequency = 1 
  #   [1] 1120 1160  963 1210 1160 1160  813 1230 1370 1140  995  935 1110  994 1020  960 1180  799  958 1140 1100 1210 1150 1250
  #  [25] 1260 1220 1030 1100  774  840  874  694  940  833  701  916  692 1020 1050  969  831  726  456  824  702 1120 1100  832
  #  [49]  764  821  768  845  864  862  698  845  744  796 1040  759  781  865  845  944  984  897  822 1010  771  676  649  846
  #  [73]  812  742  801 1040  860  874  848  890  744  749  838 1050  918  986  797  923  975  815 1020  906  901 1170  912  746
  #  [97]  919  718  714  740"
  # Podemos ver que es una serie temporal de 100 valores numericos, viendo sus propiedades usando el comando "attributes( )"
  # Devuelve:
  attributes(Nile)
  # $tsp
  # [1]1871 1970 1
  # $class
  # [1]"ts"
  # Tambien podemos usar el comando "str( )" para ver la estructura de la serie temporal
  str(Nile)
  # Devuelve: Time-Series [1:100] from 1871 to 1970: 1120 1160 963 1210 1160 1160 813 1230 1370 1140 ...
  # Por ultimo, usando el comando "attr(objeto, nombre)" podemos ver las propiedades especificas de un objeto
  # Por ejemplo hagamos una matriz 2x2 de 1s y veamos sus propiedades
  num <- c(1, 1, 1, 1)
  num
  # Devuelve: [1] 1 1 1 1
  # Con el siguiente comando podemos ver las propiedades de la matriz
  attr(num, "dim") <- c(2, 2)
  num
  # Devuelve:
  #      [,1] [,2]
  # [1,]    1    1
  # [2,]    1    1
  # Es decir, nos muestra la matriz 2x2 de 1s



# 2 - Vectores

# Ejemplo 2.1
  # Para crear un vector de 5 elementos con valores 1, 2, 3, 4, 5 usamos el comando "c( )"
  v <- c(1, 2, 3, 4, 5)
  v
  # Devuelve: [1] 1 2 3 4 5
  # Tambien podemos usar la funcion "assign()"
  assign("v", c(1, 2, 3, 4, 5))
  v
  # Una vez creado el vector se pude usar para construir otros que toman a este como base
  # Por ejemplo, para crear un vector con las exponenciales (e^v[i]) de los elementos de v usamos la funcion "exp( )"
  exp(v)
  # Devuelve: [1]    2.718282    7.389056   20.085537   54.598150  148.413159
  # Tambien podemos construir un vector que combine nuestro vector (incluso con operaciones del mismo) y otros numeros
  w <- c(2*v, 0, 0, v)
  w
  # Devuelve: [1]  2  4  6  8 10  0  0  1  2  3  4  5

# Ejemplo 2.2 - Operaciones aritmeticas
  # Podemos realizar operaciones aritmeticas con vectores, donde si un vector es demasiado corto se repite hasta que tenga la longitud del otro
  # Declaremos el vector d
  d <- c(1, 2, 3)
  d
  # Devuelve: [1] 1 2 3
  # Declaremos el vector e, usando al vector d en algunos puntos (igual que el ejemplo 2.1)
  e <- c(d, 0, 0, 0, 2*d)
  e
  # Devuelve: [1] 1 2 3 0 0 0 2 4 6
  # Ahora sumemos los vectores d y e (d se repite hasta tener la longitud de e)
  w <- d + e
  w
  # Devuelve: [1] 2 4 6 1 2 3 3 6 9
  # Es importante saber que si e tiene tamano no multiplo del de d, saldra un aviso
  # Declaremos el vector e, pero con un elemento menos
  e <- c(d, 0, 0, 2*d)
  e
  # Devuelve: [1] 1 2 3 0 0 2 4 6
  # Ahora intentemos sumarlos
  w <- d + e
  w
  # Devuelve: Aviso:
  #           In d + e :
  #             longitud de objeto mayor no es múltiplo de la longitud de uno menor
  #           [1] 2 4 6 1 2 5 5 8
  
  # Las operaciones b·sicas se realizar·n con los sÌmbolos habituales: + ; - ; * ; / ; ^ (potencia) ;
  # Tambien se pueden utilizar las siguientes funciones:
  # log ; exp ; sin ; cos ; tan ; sqrt ; max ; min ;
  # Estas operaciones son autoexplicativas
  # Tambien existen las funciones: 
  # diff(range()) ; length ; sum ; prod ;
  # Que calculan la diferencia entre el valor max y min, el numero de elementos, su suma y su producto (ambas de todos los elementos), respectivamente
  # Pongamos un ejemplo con w (usaremos u penultimo valor)
  # Declaremos w:
  d <- c(1, 2, 3)
  e <- c(d, 0, 0, 0, 2*d)
  w <- d + e
  w
  # Devuelve: [1] 2 4 6 1 2 3 3 6 9
  # Usemos ahora las ultimas funciones con w:
  diff(range(w))
  length(w)
  sum(w)
  prod(w)
  # Devuelven: [1] 8
  #            [1] 9
  #            [1] 36
  #            [1] 46656
  # Tambien podemos calcular su cuadrado
  w^2
  # Devuelve: [1]  4 16 36  1  4  9  9 36 81
  
  # Tambien podemos calcular varianza y media asi:
  # Nota: no son comando de R para ejecutar, son formulas matematicas que usan los comandos de R que muestran como se calculan
  var(x) = sum((x - mean(x))^2) / (length (x) - 1)
  mean(x) = sum(x) / length(x)
  # Si x es una matriz de datos n*p, la varianza sera la matriz de covarianzas p*p
  # Calculemos las 3 cosas usando como ejemplos x para la varianza y media, y num para la matriz de covarianzas
  vari <- sum((x - mean(x))^2) / (length(x) - 1)
  medi <- sum(x) / length(x)
  vari
  medi
  var(num)
  # Devuelven: [1] 6.104933
  #            [1] 2.320787
  #                [,1] [,2]
  #           [1,]    0    0
  #           [2,]    0    0
  # Nota: la varianza y media de x son estas basadas en las 50 muestras de la distribucion normal N(2,3) que hemos usado antes, pero varia con cada muestreo
  # Si usamos directamente var(x) y mean(x) devolveran los mismos valores
  var(x)
  mean(x)
  # Devuelven: [1] 6.104933
  #            [1] 2.320787
  
  # Tambien hay funciones para ordenar "sort()" y permutar "order()" o "sort.list()"
  # Declaremos un vector t y ordenemoslo y permutemoslo
  t <- c(3, 1, 2, 4, 5)
  t
  # Devuelve: [1] 3 1 2 4 5
  sort(t)
  # Devuelve: [1] 1 2 3 4 5
  order(t)
  # Devuelve: [1] 2 3 1 4 5
  sort.list(t)
  # Devuelve: [1] 2 3 1 4 5
  
  # Se pueden crear vectores secuenciales con la funcion "seq( )"
  # Declaremos un vector secuencial de 1 a 10 y lo mostramos
  (f <- seq(1, 10))
  # Devuelve: [1]  1  2  3  4  5  6  7  8  9 10
  # Podemos construirlo indicando el inicio (2) y la longitud (4)
  (f <- seq(2, length = 4))
  # Devuelve: [1] 2 3 4 5
  # Ademas, se puede especificar la distancia entre numeros (0.5) que por defeccto es 1
  (f <- seq(2, length = 4, by = 0.5))
  # Devuelve: [1] 2.0 2.5 3.0 3.5
  
  # Tambien se pueden crear vectores de numeros repetidos con la funcion "rep( )"
  # Declaremos un vector que repita 1 2 3, 2 veces, usando ":" para indicar el rango
  rep(1:3, 2)
  # Devuelve: [1] 1 2 3 1 2 3
  # Ademas, podemos especificar que cada numero individual se repita un numero de veces (2)
  rep(1:3, 2, each = 2)
  # Devuelve: [1] 1 1 2 2 3 3 1 1 2 2 3 3
  
# Ejemplo 2.3 - Vectores logicos
  # Creamos un vector de booleanos que indican si los elementos de f son mayores que 3
  f
  logi1 <- f > 3
  (logi1 <- f > 3)
  # Devuelve: [1] FALSE FALSE FALSE  TRUE
  
# Ejemplo 2.4 - Valores ausentes
  # Creamos un vector con un elemento NaN, otro NA y varios numeros
  g <- c(NA, 0.7071068, 0.0000000, NaN, 1.0000000, 0.7071068, 0.0000000)
  g
  # Devuelve: [1] NA 0.7071068 0.0000000 NaN 1.0000000 0.7071068 0.0000000
  # Ahora comprobamos si los elementos son NA (Not Available) o NaN (Not a Number) y los mostramos
  is.na(g)
  # Devuelve: [1]  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE
  is.nan(g) 
  # Devuelve: [1] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
  
  
  
# 3 - Matrices y Arrays
  # Definimos el vector que usaremos
  w <- c(2, 4, 6, 8, 10, 0, 0, 1, 2, 3, 4, 5)
  w
  # Devuelve: [1]  2  4  6  8 10  0  0  1  2  3  4  5
  # Podemos crear una matriz 2x6 con los elementos de w usando la funcion "dim()"
  dim(w) <- c(2, 6)
  w
  # Devuelve: [,1] [,2] [,3] [,4] [,5] [,6]
  #      [1,]    2    6   10    0    2    4
  #      [2,]    4    8    0    1    3    5
  # Tambien pocemos hacer una matriz 6x2
  dim(w) <- c(6, 2)
  w
  # Devuelve: [,1] [,2]
  #      [1,]    2    0
  #      [2,]    4    1
  #      [3,]    6    2
  #      [4,]    8    3
  #      [5,]   10    4
  #      [6,]    0    5
  # R rellena las columnas de la matriz por defecto antes de pasar a la siguiente
  # Incluso podemos hacer una matriz de 3 dimensiones, de tamaño 2x3x2
  dim(w) <- c(2, 3, 2)
  w
  # Devuelve: 
  #      , , 1
  #
  #           [,1] [,2] [,3]
  #      [1,]    2    6   10
  #      [2,]    4    8    0
  #
  #      , , 2
  #
  #           [,1] [,2] [,3]
  #      [1,]    0    2    4
  #      [2,]    1    3    5
  # Primero rellena la "primera matriz" (la de la arriba) y luego la "segunda matriz" (la de la abajo)
  # Teniendo esta ultima representacion de w, podemos acceder a cualquier elemento de la siguiente forma
  w[2, 2, 1]
  # Devuelve: [1] 8
  # Tambien podemos acceder a una columna (en este caso la 2 del 1 bloque)
  w[, 2, 1]
  # Devuelve: [1] 6 8
  # Tambien se puede acceder a las 2 columnas de ambos bloques
  w[, 2, ]
  # Devuelve:      [,1] [,2]
  #           [1,]    6    2
  #           [2,]    8    3
  # Tambien podemos usar las funciones "array( )" y "matrix( )" para crear matrices y arrays
  # Volvamos al x e y del primer ejemplo
  x <- rnorm(50, 2, 3)
  y <- rnorm(50, 2, 3)
  # Ahora crearemos un array formado por bloques 5x5 a partir de x
  arx <- array(x, c(5, 5, 2))
  x
  # Devuelve:
  # [1]  4.87978564  2.69146728  1.18670177  4.35744205  1.76987520  1.36651376 -2.95851333 -0.86417373  4.39939975  1.52156093
  # [11]  3.32237706  6.64357877  5.53511431  7.77147223  0.09828693  3.48325060 -4.07244377  7.09389007  3.50277781  2.82695751
  # [21] -1.09023292  7.17754192  5.47714985  2.45929608  5.19141264 -3.10754148  7.20277363 -3.45469743 -2.87793320  5.97266278
  # [31]  5.66185819 -2.90352387  9.74529998  5.96269908  3.47154634  2.75905082 -2.85522369 -0.30258228 -0.67280271  1.39951342
  # [41] -0.85118836  3.79540537 -1.64321026  8.00584623  9.36744158  7.07186571 -2.33024666  1.41717733  9.12113948  4.77732605
  arx
  # Devuelve:
  # , , 1
  #
  #          [,1]       [,2]       [,3]      [,4]      [,5]
  # [1,] 4.879786  1.3665138 3.32237706  3.483251 -1.090233
  # [2,] 2.691467 -2.9585133 6.64357877 -4.072444  7.177542
  # [3,] 1.186702 -0.8641737 5.53511431  7.093890  5.477150
  # [4,] 4.357442  4.3993997 7.77147223  3.502778  2.459296
  # [5,] 1.769875  1.5215609 0.09828693  2.826958  5.191413
  # 
  # , , 2
  # 
  #           [,1]      [,2]       [,3]       [,4]      [,5]
  # [1,] -3.107541  5.661858  2.7590508 -0.8511884  7.071866
  # [2,]  7.202774 -2.903524 -2.8552237  3.7954054 -2.330247
  # [3,] -3.454697  9.745300 -0.3025823 -1.6432103  1.417177
  # [4,] -2.877933  5.962699 -0.6728027  8.0058462  9.121139
  # [5,]  5.972663  3.471546  1.3995134  9.3674416  4.777326
  # Nota: estos valores varian con cada muestra
  # Ademas, si no hay elementos suficientes para rellenar el array, se rellena repitiendo los elementos iniciales
  
# Ejemplo 3.1 - Operaciones con matrices
  # Guardemos el primer bloque de arx en una matriz
  (mat1 <- arx[,,1])
  # Devuelve:
  #          [,1]       [,2]       [,3]      [,4]      [,5]
  # [1,] 4.879786  1.3665138 3.32237706  3.483251 -1.090233
  # [2,] 2.691467 -2.9585133 6.64357877 -4.072444  7.177542
  # [3,] 1.186702 -0.8641737 5.53511431  7.093890  5.477150
  # [4,] 4.357442  4.3993997 7.77147223  3.502778  2.459296
  # [5,] 1.769875  1.5215609 0.09828693  2.826958  5.191413
  # Podemos acceder tanto a la cantidad de columnas y filas, a la matriz taspuesta y a la diagonal usando las funciones "ncol( )", "nrow( )", "t()" y "diag( )"
  # La funcion "diag()" devuelve la diagonal de una matriz si se pasa esta como argumento, y una matriz diagonal si se pasa un vector o numero como argumento, cuya diagonal es el vector o numero-veces 1
  ncol(mat1)
  # Devuelve: [1] 5
  nrow(mat1)
  # Devuelve: [1] 5
  (tmat1 <- t(mat1))
  # Devuelve:
  #           [,1]      [,2]       [,3]     [,4]       [,5]
  # [1,]  4.879786  2.691467  1.1867018 4.357442 1.76987520
  # [2,]  1.366514 -2.958513 -0.8641737 4.399400 1.52156093
  # [3,]  3.322377  6.643579  5.5351143 7.771472 0.09828693
  # [4,]  3.483251 -4.072444  7.0938901 3.502778 2.82695751
  # [5,] -1.090233  7.177542  5.4771498 2.459296 5.19141264
  (dmat1 <- diag(mat1))
  # Devuelve: [1] 4.879786  -2.958513  5.535114  3.502778  5.191413
  # Asi podemos obtener una matriz diagonal, cutos elementos son los de la diagonal de la matriz original
  diag(dmat1)
  # Devuelve:
  #           [,1]      [,2]       [,3]     [,4]       [,5]
  # [1,]  4.879786  0.000000  0.0000000 0.000000 0.00000000
  # [2,]  0.000000 -2.958513  0.0000000 0.000000 0.00000000
  # [3,]  0.000000  0.000000  5.5351143 0.000000 0.00000000
  # [4,]  0.000000  0.000000  0.0000000 3.502778 0.00000000
  # [5,]  0.000000  0.000000  0.0000000 0.000000 5.19141264
  # Tambien podemos hacer una matriz diagonal 5x5 que sea la identidad
  diag(5)
  # Devuelve:
  #           [,1] [,2] [,3] [,4] [,5]
  #      [1,]    1    0    0    0    0
  #      [2,]    0    1    0    0    0
  #      [3,]    0    0    1    0    0
  #      [4,]    0    0    0    1    0
  #      [5,]    0    0    0    0    1
  
# Ejemplo 3.1.1 - Operaciones con matrices
  # Calculemos ahora la inversa de la matriz mat1
  mat1
  # Devuelve:
  #          [,1]       [,2]       [,3]      [,4]      [,5]
  # [1,] 4.879786  1.3665138 3.32237706  3.483251 -1.090233
  # [2,] 2.691467 -2.9585133 6.64357877 -4.072444  7.177542
  # [3,] 1.186702 -0.8641737 5.53511431  7.093890  5.477150
  # [4,] 4.357442  4.3993997 7.77147223  3.502778  2.459296
  # [5,] 1.769875  1.5215609 0.09828693  2.826958  5.191413
  # Para ello primero creamos una matriz columna de 1
  x1 <- rep(1, 5)
  x1
  # Devuelve: [1] 1 1 1 1 1
  # Ahora creamos b1, usando la funcion %*% que realiza el producto de matrices elemento a elemento
  b1 <- mat1%*%x1
  b1
  # Devuelve:          [,1]
  #          [1,] 11.961694
  #          [2,]  9.481631
  #          [3,] 18.428682
  #          [4,] 22.490388
  #          [5,] 11.408093
  # Ahora usemos la funcion solve() para calcular la inversa de mat1
  solve(mat1, b1)
  # Devuelve:     [,1]
  #          [1,]    1
  #          [2,]    1
  #          [3,]    1
  #          [4,]    1
  #          [5,]    1
  solve(mat1)
  # Devuelve:
  # [,1]        [,2]          [,3]         [,4]         [,5]
  # [1,]  0.23748242  0.05415226 -0.0829909602 -0.090040580  0.105216340
  # [2,] -0.12754641 -0.06571686 -0.0940833330  0.176708915  0.079623642
  # [3,] -0.05872899  0.02408059  0.0542230399  0.096456134 -0.148527901
  # [4,]  0.04028758 -0.06232110  0.1013471786 -0.036191307  0.004843882
  # [5,] -0.06440706  0.03428002 -0.0003460365 -0.003213361  0.133592326
  
# Ejemplo 3.1.2 - Autovalores y autovectores
  # Para empezar con este ejemplo, definamos una matriz simetrica
  d1 <- c(10, 0, 2, 0, 10, 4, 2, 4, 2)
  (mat2 <- matrix(d1, ncol = 3, nrow = 3))
  # Devuelve:
  #      [,1] [,2] [,3]
  # [1,]   10    0    2
  # [2,]    0   10    4
  # [3,]    2    4    2
  # Ahora usemos la funcion "eigen()" para calcular los autovalores y autovectores de mat2
  eigen(mat2)
  # Devuelve:
  # eigen() decomposition
  # $values
  # [1] 1.200000e+01 1.000000e+01 1.776357e-14
  #
  # $vectors
  #           [,1]       [,2]       [,3]
  # [1,] -0.4082483  8.944272e-01  0.1825742
  # [2,] -0.8164966 -4.472136e-01  0.3651484
  # [3,] -0.4082483  2.775558e-16 -0.9128709
  # Definamos otra matriz para otro ejemplo
  d3 <- c(1, 2, 5, 3, 7, 9, 2, 7, 1)
  mat3 <- matrix(d3, c(3, 3))
  mat3
  # Devuelve:
  #      [,1] [,2] [,3]
  # [1,]    1    3    2
  # [2,]    2    7    7
  # [3,]    5    9    1
  # Ahora usaremos la funcion "svd()" para calcular la descomposicion en valores singulares de mat3
  # Es decir, 3 matrices U, D y V, donde U y V son ortogonales y D es diagonal
  svd(mat3)
  # Devuelve:
  # $d
  # [1] 14.0785096  4.9778584  0.1284231
  #
  # $u
  #            [,1]       [,2]       [,3]
  # [1,] -0.2628271 -0.1087879 -0.9586903
  # [2,] -0.6746563 -0.6896073  0.2632121
  # [3,] -0.6897541  0.7159658  0.1078531
  #
  # $v
  #            [,1]       [,2]       [,3]
  # [1,] -0.3594777  0.4202262  0.8331781
  # [2,] -0.8323937  0.2591632 -0.4898522
  # [3,] -0.4217778 -0.8696231  0.2566303
  
# Ejemplo 3.1.3 - Construccion de matrices particionadas
  # Las funciones "cbind()" y "rbind()" permiten construir matrices a partir de otras, uniendo columnas y filas, respectivamente
  cbind(mat3, mat3)
  # Devuelve:
  #      [,1] [,2] [,3] [,4] [,5] [,6]
  # [1,]    1    3    2    1    3    2
  # [2,]    2    7    7    2    7    7
  # [3,]    5    9    1    5    9    1
  rbind(mat3, mat3)
  # Devuelve:
  #      [,1] [,2] [,3]
  # [1,]    1    3    2
  # [2,]    2    7    7
  # [3,]    5    9    1
  # [4,]    1    3    2
  # [5,]    2    7    7
  # [6,]    5    9    1
  # Tambien podemos usar la funcion "c()" que encadena elementos en un vector
  c(mat3, mat3)
  # Devuelve: [1] 1 2 5 2 7 9 3 7 1 1 2 5 2 7 9 3 7 1
  
# Ejemplo 3.1.4 - Tablas de contingencia
  # Se puede usar la funcion "table()" para crear tablas de frecuencia
  table(c(mat3, mat3))
  # Devuelve:
  #  1  2  3  5  7  9
  #  4  4  2  2  4  2
  # La primera fila muestra los valores unicos de la matriz, y la segunda el numero de veces que aparece cada uno
  # Guardemos los elementos del vector
  (v4 <- c(mat3, mat3))
  # Devuelve: [1] 1 2 5 2 7 9 3 7 1 1 2 5 2 7 9 3 7 1
  # Podemos usar ahora la funcion "sample()" para obtener una muestra aleatoria de los elementos de v4 (18 muestras en este caso)
  (mat4 <- sample(v4, 18))
  # Devuelve: [1] 7 7 5 2 5 9 9 1 2 7 1 1 3 3 1 2 7 2
  table(v4, mat4)
  # Devuelve:
  #    mat4
  # v4  1 2 3 5 7 9
  #   1 0 2 0 0 2 0
  #   2 1 1 0 0 1 1
  #   3 0 1 1 0 0 0
  #   5 1 0 0 1 0 0
  #   7 1 0 1 1 1 0
  #   9 1 0 0 0 0 1
  # Podemos usar las funciones "factor()" y "cut()" para dividir los datos en intervalos
  # Si hubieramos descrito Tempf solo con cut( ) y las 11 clases que se han pedido de forma aproximada en lugar de las 9 que efectivamente le corresponden, habrian salido dos filas de ceros en la tabla final
  Temp <- airquality[, 4]
  Tempf <- factor(cut(Temp, breaks = 55 + 5*(0:11)))
  Month <- airquality[, 5]
  table(Tempf, Month)
  # Devuelve:
  #       Month
  # Tempf      5  6  7  8  9
  #   (55,60]  8  0  0  0  0
  #   (60,65]   7  1  0  0  2
  #   (65,70]   9  1  0  0  5
  #   (70,75]   4  5  2  2  6
  #   (75,80]   2 13  1  9  8
  #   (80,85]   1  5 18  6  4
  #   (85,90]   0  3  7  9  1
  #   (90,95]   0  2  3  3  4
  #   (95,100]  0  0  0  2  0
  
  
  
# 4 - Bases de datos
  
# Ejemplo 4.1 - Listas
  # Creemos primero una lista que contiene mat1 y mat2
  (lmat2 <- list(mat1, mat2))
  # Devuelve: 
  # [[1]]
  #          [,1]       [,2]       [,3]      [,4]      [,5]
  # [1,] 4.879786  1.3665138 3.32237706  3.483251 -1.090233
  # [2,] 2.691467 -2.9585133 6.64357877 -4.072444  7.177542
  # [3,] 1.186702 -0.8641737 5.53511431  7.093890  5.477150
  # [4,] 4.357442  4.3993997 7.77147223  3.502778  2.459296
  # [5,] 1.769875  1.5215609 0.09828693  2.826958  5.191413
  #
  # [[2]]
  #      [,1] [,2] [,3]
  # [1,]   10    0    2
  # [2,]    0   10    4
  # [3,]    2    4    2
  # Podemos acceder a elementos especificos de la lista usando 2 veces [], la primera para seleccionar el elemento de la lista y la segunda para seleccionar el elemento de la matriz (en orden)
  lmat2[[2]][5]
  # Devuelve: [1] 10
  lmat2[[1]][7]
  # Devuelve: [1] -2.958513
  # Podemos unir a la lista mas elementos, en particular alguno de la propia lista
  lmat2[[3]] <- lmat2[[2]][5]
  lmat2
  # Devuelve:
  # [[1]]
  #          [,1]       [,2]       [,3]      [,4]      [,5]
  # [1,] 4.879786  1.3665138 3.32237706  3.483251 -1.090233
  # [2,] 2.691467 -2.9585133 6.64357877 -4.072444  7.177542
  # [3,] 1.186702 -0.8641737 5.53511431  7.093890  5.477150
  # [4,] 4.357442  4.3993997 7.77147223  3.502778  2.459296
  # [5,] 1.769875  1.5215609 0.09828693  2.826958  5.191413
  #
  # [[2]]
  #      [,1] [,2] [,3]
  # [1,]   10    0    2
  # [2,]    0   10    4
  # [3,]    2    4    2
  #
  # [[3]]
  # [1] 10
  
# Ejemplo 4.2 - Data frames
  # Creemos un dataframe con mat2
  mat2
  # Devuelve:
  #      [,1] [,2] [,3]
  # [1,]   10    0    2
  # [2,]    0   10    4
  # [3,]    2    4    2
  # Usaremos la funcion "data.frame()" para crear el dataframe, el cual es una lista de vectores de igual longitud
  (dfmat2 <- data.frame(mat2))
  # Devuelve:
  #   X1 X2 X3
  # 1 10  0  2
  # 2  0 10  4
  # 3  2  4  2
  X1
  # Devuelve: Error: objecto 'X1' no encontrado
  # Ahora usaremos la funcion "attach()" para acceder a las columnas del dataframe
  attach(dfmat2)
  X1
  # Devuelve: [1] 10  0  2
  # Podemos usar la funcion "detach()" para deshacer la accion de "attach()"
  detach(dfmat2)
  X1
  # Devuelve: Error: objecto 'X1' no encontrado
  
# Ejemplo 4.2.1 - Importancia de bases de datos
  # Leamos un archivo de texto, que contiene una tabla
  (dfcork <- read.table("cork.txt"))
  # Devuelve:
  #    A  B  C  D
  # 1 72 66 76 77
  # 2 60 53 66 63
  # 3 56 57 64 58
  # 4 41 29 36 38
  # Tambien podemos introducir la direccion del disco duro donde se encuentra el archivo
  # Ahora leamos una tabla de la web (se puede usar "scan()" para leer tablas de la web)
  (examE <- read.table("http://www.stat.ucla.edu/data/cox-and-snell/exampleE.data"))
  (sexamE <- scan("http://www.stat.ucla.edu/data/cox-and-snell/exampleE.data"))
  # Nota: Actualmente esta pagina no existe, por lo que no se puede leer la tabla
  # Ahora leamos scork
  (scork <- scan("scork.txt"))
  # Devuelve: Read 19 items
  # [1]  1 72 66 76 77  2 60 53 66 63  3 56 57 64 58  4 41 29 36
  # Podemos usar "edit()" para manejar con una ventana grafica los datos de un dataframe
  edfcork <- edit(dfcork)
  
  
  
# 5 - Distribuciones de probabilidad
  # La distribucion normal se denomina norm
  # Podemos calcular varias cosas:
  # La funcion de densidad de probabilidad en x = 1.96, con media = 0 y desviacion tipica = 1
  dnorm(1.96, 0, 1)
  # Devuelve: [1] 0.05844094
  # La funcion de distribucion en x = 1.96, con media = 0 y desviacion tipica = 1
  pnorm(1.96, 0, 1)
  # Devuelve: [1] 0.9750021
  # La funcion de cuantil en p = 0.975, con media = 0 y desviacion tipica = 1, que nos dice cual es diccho cuantil
  qnorm(0.975, 0, 1)
  # Devuelve: [1] 1.959964
  qnorm(0.9750021, 0, 1)
  # Devuelve: [1] 1.96
  # Ahora creemos 100 muestras de una variable N(3,2) y otra independiente t-Student (t) con 1 grado de libertad
  # Tras ello, representemos sus histogramas
  # Creamos las muestras
  par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
  mt1 <- rt(100, 1)
  mt1c <- mt1*2 + 3
  # Representamos los histogramas
  hist(mt1c)
  # Vayamos con la normal
  norm <- rnorm(100, 1)
  normc <- norm*2 + 3
  hist(normc)
  # Ambas muestran sus histogramas correspondientes
  
  
  
# 6 - Programacion
# 6.1 - Estructuras de control
# 6.1.1 - Ejecucion condicionada
  # Podemos ejecutar acciones condicionadas con la estructura "if()", "else if()" y "else" con la siguiente estructura
  # if(condicion){
  #   expresion
  # } else if(condicion){
  #   expresion
  # } else if { ... (se pueden poner tantos "else if()" como se quiera)
  # } else {
  #   expresion
  # }
  aux <- 2
  if(aux > 3){
    print("aux es mayor que 3")
  } else if (aux < 3){ 
    print("aux es menor que 3")
  } else {
    print("aux es igual a 3")
  }
  # Devuelve: [1] "aux es menor que 3"
  aux <- 3
  if(aux > 3){
    print("aux es mayor que 3")
  } else if (aux < 3){ 
    print("aux es menor que 3")
  } else {
    print("aux es igual a 3")
  }
  # Devuelve: [1] "aux es igual a 3"
  aux <- 4
  if(aux > 3){
    print("aux es mayor que 3")
  } else if (aux < 3){ 
    print("aux es menor que 3")
  } else {
    print("aux es igual a 3")
  }
  # Devuelve: [1] "aux es mayor que 3"
  # Podemos generar numeros aleatorios asi (20 en el intervalo [0,1])
  u <- runif(20)
  u
  # Devuelve:
  # [1] 0.353488030 0.638417993 0.220348642 0.956968242 0.861347674 0.318725208 0.405273982 0.993698554
  # [9] 0.006013382 0.396305711 0.759757716 0.563815500 0.711697788 0.927329608 0.462223666 0.571797452
  # [17] 0.501688229 0.897383912 0.975511240 0.518514866
  # Ahora sumemos los elementos
  s <- sum(u)
  s
  # Devuelve: [1] 12.04031
  if (s < 5) u <- 1 else if (s < 10) u <- -u else if (s < 15) u <- 2*u
  u
  # Devuelve:
  # [1] 0.70697606 1.27683599 0.44069728 1.91393648 1.72269535 0.63745042 0.81054796 1.98739711 0.01202676
  # [10] 0.79261142 1.51951543 1.12763100 1.42339558 1.85465922 0.92444733 1.14359490 1.00337646 1.79476782
  # [19] 1.95102248 1.03702973
  # Es decir, como 10 <= s < 15, se multiplica por 2
  
# 6.1.2 - Ejecucion repetida
  
  # Ahora usaremos la funcion "for()" para hacer bucles con la siguiente estructura
  # for(nombre en expresion_1){
  #   expresion_2
  # }
  # Declaramos una matriz 20x10 de numeros aleatorios generados con una distribucion N(0,1)
  z <- matrix(rnorm(200), 20, 10)
  # Definamos nuestro vector que guardara las medias de las 10 columnas de z
  mean.samp <- NULL
  # Recorremos las columnas de z guardando las medias en mean.samp
  for (i in 1:10){
    mean.samp[i] <- mean(z[,i])
  }
  # Hacemos un diagrama de barras de tallos y hojas
  stem(mean.samp)
  # Devuelve:
  # The decimal point is 1 digit(s) to the left of the |
  # 
  # -4 | 2
  # -2 | 4
  # -0 | 548
  #  0 | 4578
  #  2 | 7
  
# 6.2 - Funciones
  
  # Las funciones en R tienen la siguiente estructura:
  # nombre <- function(arg1, arg2, ...) expresion
  # Vamos a crear una funcion que calcule las medias de las potencias de una observacion (en este caso 10 muestras de distribucion N(0, 1))
  fourmom <- function(x){
    m1 <- mean(x)
    m2 <- mean(x^2)
    m3 <- mean(x^3)
    m4 <- mean(x^4)
    list (m1 = m1, m2 = m2, m3 = m3, m4 = m4)
  }
  # Generamos 10 muestras de N(0,1)
  x <- rnorm(10)
  # Calculamos las medias de las potencias
  fourmom(x)
  # Devuelve:
  # $m1
  # [1] -0.1965945
  # 
  # $m2
  # [1] 0.6997507
  #   
  # $m3
  # [1] 0.08751252
  #   
  # $m4
  # [1] 1.143684
  # Con esto terminamos el manual de R
  

  
# DATOS 1:
  # Primero leamos los datos de nuestra tabla de excel con la libreria openxlsx
  library(openxlsx)
  datos1 <- read.xlsx("datos1.xlsx", sheet = "Hoja1")
  datos1
  
  # Leemos nuestra variable (en este caso es X, que representa el idioma)
  variable <- datos1$X
  # Creamos la tabla de frecuencias
  tabla_frecuencias1 <- as.data.frame(table(variable))
  tabla_frecuencias1
  
  # Nombramos las columnas
  colnames(tabla_frecuencias1) <- c("Idioma", "Frecuencia_absoluta")
  # Calculamos la frecuencia relativa
  tabla_frecuencias1$Frecuencia_relativa <- round(tabla_frecuencias1$Frecuencia_absoluta / sum(tabla_frecuencias1$Frecuencia_absoluta), 4)
  # Calculamos frecuencia absoluta acumulada
  tabla_frecuencias1$Frecuencia_absoluta_acumulada <- cumsum(tabla_frecuencias1$Frecuencia_absoluta)
  # Calcular frecuencia relativa porcentual
  tabla_frecuencias1$Frecuencia_relativa_porcentual <- round(tabla_frecuencias1$Frecuencia_relativa * 100, 2)
  tabla_frecuencias1
  
  # Finalmente añadimos una fila con el total de los datos
  # Creamos la fila de totales
  fila_total <- data.frame(
    Idioma = "Total",
    Frecuencia_absoluta = sum(tabla_frecuencias1$Frecuencia_absoluta),
    Frecuencia_relativa = sum(tabla_frecuencias1$Frecuencia_relativa),
    Frecuencia_absoluta_acumulada = max(tabla_frecuencias1$Frecuencia_absoluta_acumulada),
    Frecuencia_relativa_porcentual = sum(tabla_frecuencias1$Frecuencia_relativa_porcentual)
  )
  # Añadimos la fila de totales a la tabla
  tabla_frecuencias1 <- rbind(tabla_frecuencias1, fila_total)  
  
  # Mostramos ya la tabla final
  tabla_frecuencias1
  
  #Nota: si se quiere omitir una barra con el total para los siguientes diagramas se debe eliminar la fila con el siguiente comando
  tabla_frecuencias1 <- tabla_frecuencias1[-6,]
  
  # Asi obtenemos la moda
  moda <- list(Idioma = tabla_frecuencias1$Idioma[which.max(tabla_frecuencias1$Frecuencia_absoluta)], Frecuencia_absoluta = max(tabla_frecuencias1$Frecuencia_absoluta))
  moda
  #Hagamos ahora el diagrama de barras
  barplot(tabla_frecuencias1$Frecuencia_absoluta, names.arg = tabla_frecuencias1$Idioma, col = "blue", main = "Diagrama de barras", xlab = "Idioma", ylab = "Frecuencia absoluta", ylim = c(0, max(tabla_frecuencias1$Frecuencia_absoluta) + 1))
  
  # Ahora hagamos un diagrama de sectores
  # Primero añadamos las etiquetas con las frecuencias relativas porcentuales
  etiquetas <- paste(tabla_frecuencias1$Idioma, "\n", tabla_frecuencias1$Frecuencia_absoluta, "(", tabla_frecuencias1$Frecuencia_relativa_porcentual, "%)", sep = "")
  # Ahora creemos la leyenda
  pie(tabla_frecuencias1$Frecuencia_absoluta, labels = etiquetas, col = rainbow(length(tabla_frecuencias1$Frecuencia_absoluta)), main = "Diagrama de sectores")
  legend("topright", legend = tabla_frecuencias1$Idioma, fill = rainbow(length(tabla_frecuencias1$Frecuencia_absoluta)), title = "Idioma")
  
  
  
# DATOS 2:
  # Primero leamos los datos de nuestra tabla de excel con la libreria openxlsx
  library(openxlsx)
  datos2 <- read.xlsx("datos1.xlsx", sheet = "Hoja2")
  datos2
  
  # Leemos nuestra variable (en este caso es X, que representa el numero)
  variable <- datos2$X
  # Creamos la tabla de frecuencias
  tabla_frecuencias2 <- as.data.frame(table(variable))
  tabla_frecuencias2
  
  # Pasamos los valores de caracteres a numeros
  tabla_frecuencias2$Valores <- as.numeric(as.character(tabla_frecuencias2$variable))
  
  # Ahora creamos los intervalos
  tabla_frecuencias2$Intervalos <- cut(tabla_frecuencias2$Valores, breaks = seq(min(tabla_frecuencias2$Valores) - 1, max(tabla_frecuencias2$Valores), by = 1), right = TRUE)
  tabla_frecuencias2
  
  # Eliminamos la columna variable ya que no la necesitamos (guarda los datos como char y no como num)
  (tabla_frecuencias2 <- tabla_frecuencias2[, -1])
  
  # Organizamos la tabla
  (tabla_frecuencias2 <- tabla_frecuencias2[, c(3, 2, 1)])
  
  
  # Nombramos las columnas
  (colnames(tabla_frecuencias2) <- c("Intervalos", "Clases", "Frecuencia_absoluta"))
  # Calculamos la frecuencia relativa
  tabla_frecuencias2$Frecuencia_relativa <- round(tabla_frecuencias2$Frecuencia_absoluta / sum(tabla_frecuencias2$Frecuencia_absoluta), 4)
  # Calculamos frecuencia absoluta acumulada
  tabla_frecuencias2$Frecuencia_absoluta_acumulada <- cumsum(tabla_frecuencias2$Frecuencia_absoluta)
  # Calcular frecuencia relativa porcentual
  tabla_frecuencias2$Frecuencia_relativa_porcentual <- round(tabla_frecuencias2$Frecuencia_relativa * 100, 2)
  # Calculamos la frecuencia relativa acumulada
  tabla_frecuencias2$Frecuencia_relativa_acumulada <- round(tabla_frecuencias2$Frecuencia_absoluta_acumulada / sum(tabla_frecuencias2$Frecuencia_absoluta), 4)
  tabla_frecuencias2
  
  # Ahora calculemos una serie de datos de nuestra tabla, los cuales guardaremos en otra
  tabla_datos2 <- data.frame(
    Dato = c("Moda", "Media", "Mediana", "Primer_cuartil", "Tercer_cuartil", "Rango", "IQR", "Varianza", "Desviacion_tipica", "Desviacion_estandar", "Varianza_de_la_muestra", "Error_tipico", "Curtosis", "Coeficiente_de_asimetria", "Minimo", "Maximo", "Suma", "Cuenta"),
    Valores = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)
  )
  
  # Calculamos la moda
  # Es el valor que mas se repite
  moda <- list(moda = tabla_frecuencias2$Clase[which.max(tabla_frecuencias2$Frecuencia_absoluta)], Frecuencia_absoluta = max(tabla_frecuencias2$Frecuencia_absoluta))
  #moda
  # Añadimos la moda a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Moda"] <- moda$moda
  tabla_datos2
  
  # Calculamos la media
  # Formula: media = (suma de cada dato por su frecuencia absoluta) / frecuencia absoluta total
  # Primero calculamos la suma de cada dato por su frecuencia absoluta
  suma <- 0
  for (i in 1:nrow(tabla_frecuencias2)){
    suma <- suma + tabla_frecuencias2$Frecuencia_absoluta[i] * tabla_frecuencias2$Clase[i]
  }
  #suma
  # Ahora si, calculamos la media
  media <- round(suma / tabla_frecuencias2$Frecuencia_absoluta_acumulada[nrow(tabla_frecuencias2)], 4)
  #media
  # Añadimos la media a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Media"] <- media
  tabla_datos2
  
  # Calculamos la mediana
  # Si la suma de las frecuencias absolutas es par o impar
  if (sum(tabla_frecuencias2$Frecuencia_absoluta) %% 2 == 0){
    # Si es par, calculamos x(n/2) y x(n/2 + 1)
    num1 <- min(which(tabla_frecuencias2$Frecuencia_absoluta_acumulada >= sum(tabla_frecuencias2$Frecuencia_absoluta) / 2))
    num2 <- min(which(tabla_frecuencias2$Frecuencia_absoluta_acumulada > sum(tabla_frecuencias2$Frecuencia_absoluta) / 2))
    # Hacemos la media de ambos
    mediana <- round((tabla_frecuencias2$Clases[num1] + 
                      tabla_frecuencias2$Clases[num2])
                      / 2, 2)
  } else {
    # Si es impar, calculamos x((n+1/2))
    num <- min(which(tabla_frecuencias2$Frecuencia_absoluta_acumulada >= (sum(tabla_frecuencias2$Frecuencia_absoluta) + 1) / 2))
    mediana <- tabla_frecuencias2$Clases[num]
  }
  #mediana
  # Añadimos la mediana a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Mediana"] <- mediana
  tabla_datos2
  
  # Calculamos el Primer Cuartil
  # Calculamos el cuartil 1
  # Como n = 48 y p = 0.25, calculamos 0.25 * 48 = 12 con E = 12 y D = 0
  if (sum(tabla_frecuencias2$Frecuencia_absoluta) %% 4 == 0){
    # Si es multiplo de 4, calculamos x(n/4) y x(n/4 + 1)
    num1 <- min(which(tabla_frecuencias2$Frecuencia_absoluta_acumulada >= sum(tabla_frecuencias2$Frecuencia_absoluta) / 4))
    num2 <- min(which(tabla_frecuencias2$Frecuencia_absoluta_acumulada > sum(tabla_frecuencias2$Frecuencia_absoluta) / 4))
    # Hacemos la media de ambos
    cuartil1 <- round((tabla_frecuencias2$Clases[num1] + 
                      tabla_frecuencias2$Clases[num2])
                      / 2, 2)
  } else {
    # Si no, calculamos x((n/4) + 1)
    num <- min(which(tabla_frecuencias2$Frecuencia_absoluta_acumulada >= (sum(tabla_frecuencias2$Frecuencia_absoluta) + 1) / 4))
    cuartil1 <- tabla_frecuencias2$Clases[num]
  }
  #cuartil1
  # Añadimos el cuartil 1 a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Primer_cuartil"] <- cuartil1
  tabla_datos2
  
  # Seguimos con el tercer cuartil
  # Calculamos el cuartil 3
  # Como n = 48 y p = 0.75, calculamos 0.75 * 48 = 36 con E = 36 y D = 0
  if (sum(tabla_frecuencias2$Frecuencia_absoluta) %% 4 == 0){
    # Si es multiplo de 4, calculamos x(3n/4) y x(3n/4 + 1)
    num1 <- min(which(tabla_frecuencias2$Frecuencia_absoluta_acumulada >= 3 * sum(tabla_frecuencias2$Frecuencia_absoluta) / 4))
    num2 <- min(which(tabla_frecuencias2$Frecuencia_absoluta_acumulada > 3 * sum(tabla_frecuencias2$Frecuencia_absoluta) / 4))
    # Hacemos la media
    cuartil3 <- round((tabla_frecuencias2$Clases[num1] + 
                      tabla_frecuencias2$Clases[num2])
                      / 2, 2)
  } else {
    # Si no, calculamos x((3n/4) + 1)
    num <- min(which(tabla_frecuencias2$Frecuencia_absoluta_acumulada >= 3 * (sum(tabla_frecuencias2$Frecuencia_absoluta) + 1) / 4))
    cuartil3 <- tabla_frecuencias2$Clases[num]
  }
  #cuartil3
  # Añadimos el cuartil 3 a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Tercer_cuartil"] <- cuartil3
  tabla_datos2
  
  # Calculamos el rango
  # Formula: max - min (en terminos de las clases)
  rango <- max(tabla_frecuencias2$Clases) - min(tabla_frecuencias2$Clases)
  #rango
  # Añadimos el rango a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Rango"] <- rango
  tabla_datos2
  
  # Calculamos el IQR
  # Formula: cuartil3 - cuartil1
  IQR <- cuartil3 - cuartil1
  #IQR
  # Añadimos el IQR a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "IQR"] <- IQR
  tabla_datos2
  
  # Calculamos la varianza
  # Formula: sumatoria de (frecuencia absoluta * (clase - media)^2) / sumatoria de frecuencia absoluta
  # Multiplicamos por la frecuencia absoluta para sumar todas las (clase - media)^2 que haya de golpe (de una misma clase)
  # Calculamos la suma de los cuadrados de las diferencias entre cada dato y la media
  suma <- 0
  for (i in 1:nrow(tabla_frecuencias2)){
    suma <- suma + tabla_frecuencias2$Frecuencia_absoluta[i] * (tabla_frecuencias2$Clases[i] - media)^2
  }
  #suma
  # Calculamos la varianza
  varianza <- round(suma / (sum(tabla_frecuencias2$Frecuencia_absoluta)), 4)
  #varianza
  # Añadimos la varianza a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Varianza"] <- varianza
  tabla_datos2
  
  # Calculamos la desviacion tipica
  # Formula: sqrt(varianza)
  desviacion_tipica <- round(sqrt(varianza), 4)
  #desviacion_tipica
  # Añadimos la desviacion tipica a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Desviacion_tipica"] <- desviacion_tipica
  tabla_datos2
  
  # Calculamos la desviacion estandar
  # Formula: sqrt(varianza * (n / (n - 1)))
  desviacion_estandar <- round(sqrt(varianza * (sum(tabla_frecuencias2$Frecuencia_absoluta) / (sum(tabla_frecuencias2$Frecuencia_absoluta) - 1))), 4)
  #desviacion_estandar
  # Añadimos la desviacion estandar a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Desviacion_estandar"] <- desviacion_estandar
  tabla_datos2
  
  # Calculamos la varianza de la muestra
  # Formula: varianza * (n / (n - 1))
  varianza_muestra <- round(varianza * (sum(tabla_frecuencias2$Frecuencia_absoluta) / (sum(tabla_frecuencias2$Frecuencia_absoluta) - 1)), 4)
  #varianza_muestra
  # Añadimos la varianza de la muestra a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Varianza_de_la_muestra"] <- varianza_muestra
  tabla_datos2
  
  # Calculamos el error tipico
  # Formula: desviacion estandar / sqrt(n)
  error_tipico <- round(desviacion_estandar / sqrt(sum(tabla_frecuencias2$Frecuencia_absoluta)), 4)
  #error_tipico
  # Añadimos el error tipico a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Error_tipico"] <- error_tipico
  tabla_datos2
    
  # Calculamos la curtosis
  # Formula: ((sumatorio de (frecuencia absoluta * (clase - media)^4) / sumatoria de frecuencia absoluta) / desviacion estandar^4)*(n^2(n + 1) / (n - 1)(n - 2)(n - 3)) - 3(n - 1)^2 / (n - 2)(n - 3)
  # Calculamos la suma de las cuartas potencias de las diferencias entre cada dato y la media
  suma <- 0
  for (i in 1:nrow(tabla_frecuencias2)){
    suma <- suma + tabla_frecuencias2$Frecuencia_absoluta[i] * (tabla_frecuencias2$Clases[i] - media)^4
  }
  #suma
  # Calculamos la curtosis
  n <- sum(tabla_frecuencias2$Frecuencia_absoluta)
  curtosis <- round((((suma / (sum(tabla_frecuencias2$Frecuencia_absoluta))) / desviacion_estandar^4) * (n^2 * (n + 1) / ((n - 1) * (n - 2) * (n - 3))) - 3 * (n - 1)^2 / ((n - 2) * (n - 3))), 4)
  #curtosis
  # Añadimos la curtosis a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Curtosis"] <- curtosis
  tabla_datos2
  
  # Calculamos el coeficiente de asimetria
  # Formula: ((sumatorio de (frecuencia absoluta * (clase - media)^3) / sumatoria de frecuencia absoluta) / desviacion estandar^3) * (n^2/(n - 1)(n - 2))
  # Calculamos la suma de los cubos de las diferencias entre cada dato y la media
  suma <- 0
  for (i in 1:nrow(tabla_frecuencias2)){
    suma <- suma + tabla_frecuencias2$Frecuencia_absoluta[i] * (tabla_frecuencias2$Clases[i] - media)^3
  }
  #suma
  # Calculamos el coeficiente de asimetria
  coeficiente_asimetria <- round((suma / (sum(tabla_frecuencias2$Frecuencia_absoluta)) / desviacion_estandar^3) * (n^2 / ((n - 1) * (n - 2))), 4)
  #coeficiente_asimetria
  # Añadimos el coeficiente de asimetria a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Coeficiente_de_asimetria"] <- coeficiente_asimetria
  tabla_datos2
  
  # Calculamos el minimo
  minimo <- min(tabla_frecuencias2$Clases)
  #minimo
  # Añadimos el minimo a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Minimo"] <- minimo
  tabla_datos2
  
  # Calculamos el maximo
  maximo <- max(tabla_frecuencias2$Clases)
  #maximo
  # Añadimos el maximo a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Maximo"] <- maximo
  tabla_datos2
  
  # Calculamos la suma
  suma <- 0
  for (i in 1:nrow(tabla_frecuencias2)){
    suma <- suma + tabla_frecuencias2$Frecuencia_absoluta[i] * tabla_frecuencias2$Clases[i]
  }
  #suma
  # Añadimos la suma a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Suma"] <- suma
  tabla_datos2
  
  # Calculamos la cuenta
  cuenta <- sum(tabla_frecuencias2$Frecuencia_absoluta)
  #cuenta
  # Añadimos la cuenta a la tabla
  tabla_datos2$Valores[tabla_datos2$Dato == "Cuenta"] <- cuenta
  tabla_datos2
                    
  # Mostramos la tabla final
  tabla_datos2
  
  # Una vez calculados estos datos, podemos añadir a nuestra tabla de frecuencias una columna con los datos normalizados
  # Normalizamos los datos
  # formula: e^(-(x - media)^2 / (2 * desviacion_tipicar^2))/sqrt(2 * pi * desviacion_tipica^2)
  tabla_frecuencias2$Normalizado <- round(exp(-((tabla_frecuencias2$Clases - media)^2) / (2 * desviacion_tipica^2)) / sqrt(2 * pi * desviacion_tipica^2), 8)
  tabla_frecuencias2
  
  
  # Ahora hagamos los diagramas
  # Diagrama de barras
  # Cargar librería ggplot2
  library(ggplot2)
  # Crear gráfico
  ggplot(tabla_frecuencias2, aes(x = Clases)) +
    geom_bar(aes(y = Frecuencia_absoluta, fill = "Frecuencia absoluta"), stat = "identity", alpha = 0.6) +  # Barras de frecuencia
    geom_line(aes(y = Frecuencia_relativa_acumulada * max(Frecuencia_absoluta), color = "% Acumulado", group = 1), size = 1) +  # Línea acumulada
    geom_point(aes(y = Frecuencia_relativa_acumulada * max(Frecuencia_absoluta), color = "% Acumulado"), size = 2) +  # Puntos de la línea
    scale_y_continuous(
      breaks = seq(0, 16, by = 2),
      sec.axis = sec_axis(~ . / max(tabla_frecuencias2$Frecuencia_absoluta), name = "% Acumulado")
    )+
    scale_x_continuous(breaks = tabla_frecuencias2$Clases) +  # Mostrar todos los números en X
    scale_fill_manual(name = "Leyenda", values = c("Frecuencia absoluta" = "blue")) +  # Personalizar leyenda de barras
    scale_color_manual(name = "Leyenda", values = c("% Acumulado" = "red")) +  # Personalizar leyenda de línea
    labs(x = "Clase", y = "Frecuencia absoluta", title = "Diagrama de Barras y Frecuencia Acumulada") +
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),  # Eliminar todas las líneas de cuadrícula
      legend.position = "right"  # Mover la leyenda a la derecha
    )

  # Diagrama de barras (solo la f.a.)
  ggplot(tabla_frecuencias2, aes(x = Clases, y = Frecuencia_absoluta, fill = "Frecuencia Absoluta")) +
    geom_bar(stat = "identity", alpha = 0.6) +  # Barras de frecuencia con leyenda
    geom_hline(yintercept = seq(0, 16, by = 2), color = "gray70", linetype = "dashed", size = 0.5) +  # Líneas horizontales sin leyenda
    scale_y_continuous(
      breaks = seq(0, 16, by = 2)
    ) +
    scale_x_continuous(breaks = tabla_frecuencias2$Clases) +  # Mostrar todos los números en X
    scale_fill_manual(name = "Leyenda", values = c("Frecuencia Absoluta" = "blue")) +  # Leyenda solo para las barras
    labs(x = "Clase", y = "Frecuencia absoluta", title = "Diagrama de Barras") +
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),  # Eliminar todas las líneas de cuadrícula
      legend.position = "right"  # Mover la leyenda a la derecha
    )
  
  # Poligono de frecuencias
  library(dplyr)
  ggplot(tabla_frecuencias2, aes(x = Clases)) +
    geom_line(aes(y = Frecuencia_absoluta, color = "Frecuencia absoluta"), lwd = 1) +  
    geom_point(aes(y = Frecuencia_absoluta, color = "Frecuencia absoluta"), size = 3, shape = 15) +
    geom_line(aes(y = Frecuencia_absoluta_acumulada, color = "Frecuencia absoluta acumulada"), lwd = 1) +  
    geom_point(aes(y = Frecuencia_absoluta_acumulada, color = "Frecuencia absoluta acumulada"), size = 3, shape = 15) +
    scale_x_continuous(breaks = tabla_frecuencias2$Clases) +  
    scale_color_manual(values = c("Frecuencia absoluta" = "blue", "Frecuencia absoluta acumulada" = "red")) +
    labs(x = "Clase", y = "Frecuencia", title = "Polígono de Frecuencias", color = "Leyenda") +
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    geom_hline(yintercept = seq(0, max(tabla_frecuencias2$Frecuencia_absoluta_acumulada, na.rm = TRUE), by = 10), 
               linetype = "dashed", color = "gray")
  
  # Hagamos ahora un poligono de frecuencias con la f.r. en rosa y la normal en azul
  ggplot(tabla_frecuencias2, aes(x = Clases)) +
    geom_line(aes(y = Frecuencia_relativa, color = "Frecuencia relativa"), lwd = 1) +  
    geom_line(aes(y = Normalizado, color = "Normalizado"), lwd = 1) +  
    scale_x_continuous(breaks = tabla_frecuencias2$Clases) +  
    scale_y_continuous(breaks = seq(0, 0.35, by = 0.05), limits = c(0, 0.35)) +  # Eje Y con saltos de 0.05 hasta 0.35
    scale_color_manual(values = c("Frecuencia relativa" = "pink", "Normalizado" = "blue")) +
    labs(x = "Clase", y = "Frecuencia", title = "Polígono de Frecuencias", color = "Leyenda") +
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    geom_hline(yintercept = seq(0, 0.35, by = 0.05), linetype = "dashed", color = "gray")
  
  # Histograma con las f.a.a. de los intervalos
  ggplot(tabla_frecuencias2, aes(x = as.factor(Intervalos), y = Frecuencia_absoluta_acumulada)) +
    geom_bar(stat = "identity", fill = "blue", alpha = 0.6) +
    scale_x_discrete(name = "Intervalos") +  # Se usa scale_x_discrete para que se muestren los intervalos correctamente
    scale_y_continuous(
      breaks = seq(0, 60, by = 10),  # Saltos de 10 en 10
      sec.axis = sec_axis(~ . / max(tabla_frecuencias2$Frecuencia_absoluta), name = "% Acumulado")
    ) +
    labs(x = "Intervalo", y = "Frecuencia absoluta acumulada", title = "Histograma y Frecuencia Acumulada", fill = "Frecuencia absoluta acumulada") +
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    geom_hline(yintercept = seq(0, 60, by = 10), linetype = "dashed", color = "gray")  # Líneas horizontales cada 10
  
  
  
# Datos 3:
  # Primero leamos los datos de nuestra tabla de excel con la libreria openxlsx
  library(openxlsx)
  datos3 <- read.xlsx("datos1.xlsx", sheet = "Hoja3")
  datos3
  
  # Leemos nuestra variable (en este caso es X, que representa el numero)
  variable <- datos3$X
  
  # Para despues, guardaremos los datos tal cual en una tabla
  tabla_valores3 <- as.data.frame(table(variable))
  tabla_valores3
  
  # Definimos los intervalos (desde 55 hasta el máximo valor de X)
  breaks <- seq(55, max(variable, na.rm = TRUE) + 10, by = 10)
  # Creamos las etiquetas para los intervalos
  labels <- paste0("(", head(breaks, -1), ", ", tail(breaks, -1), "]")
  # Creamos la tabla de frecuencias con intervalos
  datos3$intervalos <- cut(variable, breaks = breaks, labels = labels, include.lowest = TRUE)
  # Contamos las frecuencias
  tabla_frecuencias3 <- as.data.frame(table(datos3$intervalos))
  # Renombramos las columnas
  colnames(tabla_frecuencias3) <- c("Intervalo", "Frecuencia_absoluta")
  tabla_frecuencias3
  
  # Añadamos columnas con el inicio del intervalo, el fin, la media del intervalo f.a., f.r., f.a.a. y f.r.a.
  # Extraemos inicio y fin de cada intervalo
  tabla_frecuencias3$Inicio <- head(breaks, -1)
  tabla_frecuencias3$Fin <- tail(breaks, -1)
  
  # Calculemos la media de cada intervalo y lo añadimos
  # Formula: (inicio + fin) / 2
  media_intervalo <- round((tabla_frecuencias3$Inicio + tabla_frecuencias3$Fin) / 2, 2)
  #media_intervalo
  
  # Añadimos la media de cada intervalo a la tabla
  tabla_frecuencias3$Media_intervalo <- media_intervalo
  #tabla_frecuencias3
  
  # Calculamos la frecuencia absoluta acumulada (f.a.a.)
  tabla_frecuencias3$Frecuencia_absoluta_acumulada <- cumsum(tabla_frecuencias3$Frecuencia_absoluta)
  
  # Calculamos la frecuencia relativa (f.r.)
  tabla_frecuencias3$Frecuencia_relativa <- round(tabla_frecuencias3$Frecuencia_absoluta / sum(tabla_frecuencias3$Frecuencia_absoluta), 4)
  
  # Calculamos la frecuencia relativa acumulada (f.r.a.)
  tabla_frecuencias3$Frecuencia_relativa_acumulada <- round(cumsum(tabla_frecuencias3$Frecuencia_relativa), 4)

  # Mostramos la tabla
  tabla_frecuencias3
  
  # Añadamos la m.c. (media de cada intervalo)
  tabla_frecuencias3$Mc <- round((tabla_frecuencias3$Inicio + tabla_frecuencias3$Fin) / 2, 2)
  tabla_frecuencias3
  
  # Reordenamos para que la f.a. vaya despues de la media
  tabla_frecuencias3 <- tabla_frecuencias3[, c(1, 3, 4, 5, 2, 6, 7, 8)]
  tabla_frecuencias3
  
  # Añadamos las ultimas columnas
  # Columna con los %
  tabla_frecuencias3$Frecuencia_relativa_porcentual <- round(tabla_frecuencias3$Frecuencia_relativa * 100, 2)
  #tabla_frecuencias3
  
  # Columna con los % acumulados
  tabla_frecuencias3$Frecuencia_relativa_acumulada_porcentual <- round(tabla_frecuencias3$Frecuencia_relativa_acumulada * 100, 2)
  #tabla_frecuencias3
  
  # Calculemos la media para ciertos calculos
  # Formula: sumatoria de (media_intervalo * f.r.)
  media_aprox <- sum(tabla_frecuencias3$Media_intervalo * tabla_frecuencias3$Frecuencia_relativa)
  media_aprox
  
  # Añadamos una columna con la diferencia entre las medias de los intervalos con la media total, al cuadrado, al cubo y a la cuarta, que nos permiten calcular los momentos
  # Columna con la diferencia al cuadrado
  tabla_frecuencias3$Diferencia_cuadrado <- round((tabla_frecuencias3$Media_intervalo - media_aprox)^2, 2)
  # Columna con la diferencia al cubo
  tabla_frecuencias3$Diferencia_cubo <- round((tabla_frecuencias3$Media_intervalo - media_aprox)^3, 3)
  # Columna con la diferencia a la cuarta
  tabla_frecuencias3$Diferencia_cuarta <- round((tabla_frecuencias3$Media_intervalo - media_aprox)^4, 4)
  tabla_frecuencias3
  
  # Columna con la altura de la f.r.
  # Formula: f.r./10
  tabla_frecuencias3$Altura_fr <- round(tabla_frecuencias3$Frecuencia_relativa / 10, 3)
  
  # Ahora las alturas de la f.r.a.
  # Formula: f.r.a./10
  tabla_frecuencias3$Altura_fra <- round(tabla_frecuencias3$Frecuencia_relativa_acumulada / 10, 3)
  
  # Finalmente mostramos la tabla
  tabla_frecuencias3
  
  # Volvamos a nuestros valores sin agrupar
  tabla_valores3
  
  # Separemos cada dato individualmente, independientemente de si este esta repetido
  tabla_valores3 <- rep(tabla_valores3$variable, tabla_valores3$Freq)

  # Ahora transformemos estos datos en la primera columna de un dataframe
  tabla_valores3 <- as.data.frame(tabla_valores3)
  
  # Renombremos la columna a "valores"
  colnames(tabla_valores3) <- "valores"
  
  # Transformemos los datos en numeros
  tabla_valores3$valores <- as.numeric(as.character(tabla_valores3$valores))
  
  # Ahora calculemos la media
  # Formula: sumatoria de los valores / cantidad de valores
  media <- 0
  for (i in 1:nrow(tabla_valores3)){
    media <- media + tabla_valores3$valores[i]
  }
  media <- round(media / nrow(tabla_valores3), 3)
  media
  
  # Añadamos a nuestra tabla la diferencia de cada dato con la media, al cuadrado, al cubo y a la cuarta, que nos permiten calcular los momentos
  # Columna con la diferencia al cuadrado
  tabla_valores3$Diferencia_cuadrado <- round((tabla_valores3$valores - media)^2, 6)
  # Columna con la diferencia al cubo
  tabla_valores3$Diferencia_cubo <- round((tabla_valores3$valores - media)^3, 6)
  # Columna con la diferencia a la cuarta
  tabla_valores3$Diferencia_cuarta <- round((tabla_valores3$valores - media)^4, 6)
  tabla_valores3
  
  # Ahora finalmente vayamos a crear una tabla que guarde diversos datos de nuestra muestra
  # Estos datos son: Moda, media, media aprox., mediana (y su posicion), primer cuartil (y su posicion), tercer cuartil (y su posicion), rango, IQR,  minimo, maximo, suma, cuenta, error tipico,
  # Varianza, varianza aprox., cuasivarianza, desviacion tipica, desviacion tipica aprox., cuasidesviacion tipica, c.v., c.v. aprox.,
  # Coeficiente de simetria (Pearson), coeficiente de simetria (Pearson) aprox., coeficiente de simetria (Fisher), coeficiente de simetria (Fisher) aprox., coeficiente de simetria estandarizado, 
  # Coeficiente de curtosis (Fisher), coeficiente de curtosis (Fisher) aprox., coeficiente de curtosis estandarizado
  
  # Todo esto lo haremos utilizando las dos tablas que ya tenemos, para ahorrar ciertos calculos (ademas las medias ya estaban calculadas)
  # Primero creemos la tabla
  tabla_datos3 <- data.frame(
    Dato = c("Moda", "Media", "Media aproximada", "Mediana", "Posicion mediana", "Primer cuartil", "Posicion primer cuartil", "Tercer cuartil", "Posicion tercer cuartil", "Rango", "IQR", "Minimo", "Maximo", "Suma", "Cuenta", "Error tipico", "Varianza", "Varianza aproximada", "Cuasivarianza", "Desviacion tipica", "Desviacion tipica aproximada", "Cuasidesviacion tipica", "Coeficiente de variacion", "Coeficiente de variacion aproximado", "Coeficiente de variacion tipico", "Coeficiente de simetria (Pearson)", "Coeficiente de simetria (Pearson) aproximado", "Coeficiente de simetria (Fisher)", "Coeficiente de simetria (Fisher) aproximado", "Coeficiente de simetria estandarizado", "Coeficiente de curtosis (Fisher)", "Coeficiente de curtosis (Fisher) aproximado", "Coeficiente de curtosis estandarizado"),
    Valores = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)
  )
  tabla_datos3
  
  # Calculamos la moda (tomando como referencia las medias de los intervalos)
  # Tomaremos el intervalo con mayor frecuencia absoluta, y cogeremos la media de este
  moda <- tabla_frecuencias3$Media_intervalo[which.max(tabla_frecuencias3$Frecuencia_absoluta)]
  #moda
  # Añadimos la moda a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Moda"] <- moda
  
  # Añadamos las medias ya calculadas
  tabla_datos3$Valores[tabla_datos3$Dato == "Media"] <- media
  tabla_datos3$Valores[tabla_datos3$Dato == "Media aproximada"] <- media_aprox
  
  # Calculamos la mediana usando la lista con los valores
  # Si la suma de las frecuencias absolutas es par o impar
  if (nrow(tabla_valores3) %% 2 == 0){
    # Si es par, calculamos x(n/2) y x(n/2 + 1)
    num1 <- min(which(cumsum(tabla_valores3$valores) >= sum(tabla_valores3$valores) / 2))
    num2 <- min(which(cumsum(tabla_valores3$valores) > sum(tabla_valores3$valores) / 2))
    # Hacemos la media de ambos
    mediana <- round((tabla_valores3$valores[num1] + 
                      tabla_valores3$valores[num2])
                      / 2, 2)
  } else {
    # Si es impar, calculamos x((n+1/2))
    num <- min(which(cumsum(tabla_valores3$valores) >= (sum(tabla_valores3$valores) + 1) / 2))
    mediana <- tabla_valores3$valores[num]
  }
  #mediana
  # Añadimos la mediana a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Mediana"] <- mediana
  
  # La posicion de la mediana es np = 12.5, entonces cogemos el 13 (porque es el siguiente)
  tabla_datos3$Valores[tabla_datos3$Dato == "Posicion mediana"] <- nrow(tabla_valores3) / 2
  
  
  # Calculamos el Primer Cuartil
  # Calculamos el cuartil 1
  # Como n = 25 y p = 0.25, calculamos 0.25 * 25 = 6.25 con E = 6 y D = 0.25
  if (nrow(tabla_valores3) %% 4 == 0){
    # Si es multiplo de 4, calculamos x(n/4) y x(n/4 + 1)
    num1 <- min(which(cumsum(tabla_valores3$valores) >= sum(tabla_valores3$valores) / 4))
    num2 <- min(which(cumsum(tabla_valores3$valores) > sum(tabla_valores3$valores) / 4))
    # Hacemos la media de ambos
    (cuartil1 <- round((tabla_valores3$valores[num1] + 
                      tabla_valores3$valores[num2])
                      / 2, 2))
  } else {
    # Si no, calculamos x((n/4) + 1)
    num <- min(which(cumsum(tabla_valores3$valores) >= (sum(tabla_valores3$valores) + 1) / 4))
    (cuartil1 <- tabla_valores3$valores[num])
  }
  #cuartil1
  # Añadimos el cuartil 1 a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Primer cuartil"] <- cuartil1
  
  # La posicion del primer cuartil es np = 6.25, entonces cogemos el 7 (porque es el siguiente)
  tabla_datos3$Valores[tabla_datos3$Dato == "Posicion primer cuartil"] <- nrow(tabla_valores3) * 0.25
  
  # Calculamos el Tercer Cuartil
  # Calculamos el cuartil 3
  # Como n = 25 y p = 0.75, calculamos 0.75 * 25 = 18.75 con E = 18 y D = 0.75
  if (nrow(tabla_valores3) %% 4 == 0){
    # Si es multiplo de 4, calculamos x(3n/4) y x(3n/4 + 1)
    num1 <- min(which(cumsum(tabla_valores3$valores) >= 3 * sum(tabla_valores3$valores) / 4))
    num2 <- min(which(cumsum(tabla_valores3$valores) > 3 * sum(tabla_valores3$valores) / 4))
    # Hacemos la media de ambos
    (cuartil3 <- round((tabla_valores3$valores[num1] + 
                      tabla_valores3$valores[num2])
                      / 2, 2))
  } else {
    # Si no, calculamos x((3n/4) + 1)
    # Para ello calculemos primero np
    num <- nrow(tabla_valores3) * 0.75
    # Lo truncamos y le sumamos 1
    num <- trunc(num) + 1
    (cuartil3 <- tabla_valores3$valores[num])
  }
  #cuartil3
  # Añadimos el cuartil 3 a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Tercer cuartil"] <- cuartil3
  
  # La posicion del tercer cuartil es np = 18.75, entonces cogemos el 19 (porque es el siguiente)
  tabla_datos3$Valores[tabla_datos3$Dato == "Posicion tercer cuartil"] <- nrow(tabla_valores3) * 0.75
  
  # Calculamos el rango
  # Formula: max - min
  rango <- max(tabla_valores3$valores) - min(tabla_valores3$valores)
  #rango
  # Añadimos el rango a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Rango"] <- rango
  
  # Calculamos el IQR
  # Formula: cuartil3 - cuartil1
  IQR <- cuartil3 - cuartil1
  #IQR
  # Añadimos el IQR a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "IQR"] <- IQR
  
  # Calculamos el minimo
  minimo <- min(tabla_valores3$valores)
  #minimo
  # Añadimos el minimo a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Minimo"] <- minimo
  
  # Calculamos el maximo
  maximo <- max(tabla_valores3$valores)
  #maximo
  # Añadimos el maximo a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Maximo"] <- maximo
  
  # Calculamos la suma
  suma <- sum(tabla_valores3$valores)
  #suma
  # Añadimos la suma a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Suma"] <- suma
  
  # Calculamos la cuenta
  cuenta <- nrow(tabla_valores3)
  #cuenta
  # Añadimos la cuenta a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Cuenta"] <- cuenta
  
  # Calculamos el error tipico despues, cuando tengamos el resto de datos
  
  # Calculamos la varianza
  # Formula: sumatoria de (x - media)^2 / n
  (varianza <- round(sum(tabla_valores3$Diferencia_cuadrado) / cuenta, 4))
  #varianza
  # Añadimos la varianza a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Varianza"] <- varianza
  
  # Calculamos la varianza aproximada
  # Formula: sumatoria de (f.r. * (media_intervalo - media)^2)
  (varianza_aprox <- round(sum(tabla_frecuencias3$Frecuencia_relativa * tabla_frecuencias3$Diferencia_cuadrado), 4))
  #varianza_aprox
  # Añadimos la varianza aproximada a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Varianza aproximada"] <- varianza_aprox
  
  # Calculamos la cuasivarianza
  # Formula: (n / (n - 1)) * varianza
  (cuasivarianza <- round((cuenta / (cuenta - 1)) * varianza, 4))
  #cuasivarianza
  # Añadimos la cuasivarianza a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Cuasivarianza"] <- cuasivarianza
  
  # Calculamos la desviacion tipica
  # Formula: sqrt(varianza)
  (desviacion_tipica <- round(sqrt(varianza), 4))
  #desviacion_tipica
  # Añadimos la desviacion tipica a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Desviacion tipica"] <- desviacion_tipica
  
  # Calculamos la desviacion tipica aproximada
  # Formula: sqrt(varianza aproximada)
  (desviacion_tipica_aprox <- round(sqrt(varianza_aprox), 4))
  #desviacion_tipica_aprox
  # Añadimos la desviacion tipica aproximada a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Desviacion tipica aproximada"] <- desviacion_tipica_aprox
  
  # Calculamos la cuasidesviacion tipica
  # Formula: sqrt(cuasivarianza)
  (cuasidesviacion_tipica <- round(sqrt(cuasivarianza), 4))
  #cuasidesviacion_tipica
  # Añadimos la cuasidesviacion tipica a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Cuasidesviacion tipica"] <- cuasidesviacion_tipica
  
  # Calculamos el coeficiente de variacion
  # Formula: (desviacion tipica / media)
  (c_v <- round((desviacion_tipica / media), 4))
  #c_v
  # Añadimos el coeficiente de variacion a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de variacion"] <- c_v
  
  # Calculamos el coeficiente de variacion aproximado
  # Formula: (desviacion tipica aproximada / media)
  (c_v_aprox <- round((desviacion_tipica_aprox / media), 4))
  #c_v_aprox
  # Añadimos el coeficiente de variacion aproximado a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de variacion aproximado"] <- c_v_aprox
  
  # Calculamos el coeficiente de variacion tipico
  # Formula: (cuasi desviacion tipica / media)
  (c_v_tipico <- round((cuasidesviacion_tipica / media), 4))
  #c_v_tipico
  # Añadimos el coeficiente de variacion tipico a la tabla  
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de variacion tipico"] <- c_v_tipico
  
  # Ahora si calculamos el error tipico
  # Formula: cuasi desviacion tipica / sqrt(n)
  (error_tipico <- round(cuasidesviacion_tipica / sqrt(cuenta), 4))
  #error_tipico
  # Añadimos el error tipico a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Error tipico"] <- error_tipico
  
  # Calculamos el coeficiente de simetria (Pearson)
  # Formula: (media - moda) / desviacion tipica
  (coeficiente_simetria <- round((media - moda) / desviacion_tipica, 4))
  #coeficiente_simetria
  # Añadimos el coeficiente de simetria a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de simetria (Pearson)"] <- coeficiente_simetria
  
  # Calculamos el coeficiente de simetria (Pearson) aproximado
  # Formula: (media aproximada - moda) / desviacion tipica aproximada
  (coeficiente_simetria_aprox <- round((media_aprox - moda) / desviacion_tipica_aprox, 4))
  #coeficiente_simetria_aprox
  # Añadimos el coeficiente de simetria aproximado a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de simetria (Pearson) aproximado"] <- coeficiente_simetria_aprox
  
  # Calculamos el coeficiente de simetria (Fisher)
  # Formula: (media(diferencia al cubo) / desviacion tipica^3)
  (coeficiente_simetria_fisher <- round(sum(tabla_valores3$Diferencia_cubo) / (cuenta * desviacion_tipica^3), 4))
  #coeficiente_simetria_fisher
  # Añadimos el coeficiente de simetria a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de simetria (Fisher)"] <- coeficiente_simetria_fisher
  
  # Calculamos el coeficiente de simetria (Fisher) aproximado
  # Formula: (suma(f.r. * diferencia al cubo de cada intervalo) / desviacion tipica aprox^3)
  (coeficiente_simetria_fisher_aprox <- round(sum(tabla_frecuencias3$Frecuencia_relativa * tabla_frecuencias3$Diferencia_cubo) / (desviacion_tipica_aprox^3), 4))
  #coeficiente_simetria_fisher_aprox
  # Añadimos el coeficiente de simetria aproximado a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de simetria (Fisher) aproximado"] <- coeficiente_simetria_fisher_aprox
  
  # Calculamos el coeficiente de simetria estandarizado
  # Formula: (n/((n-1)(n-2))) * coeficiente de simetria (fisher) * n * desviaicon tipica^3 / cuasi desviacion tipica^3
  # La formula tambien se puede expresar como: (n/((n-1)(n-2))) * suma( ((x - media)/(cuasidesviacion tipica))^3 )
  (coeficiente_simetria_estandarizado <- round((cuenta / ((cuenta - 1) * (cuenta - 2))) * coeficiente_simetria_fisher * cuenta * desviacion_tipica^3 / (cuasidesviacion_tipica^3), 4))
  #coeficiente_simetria_estandarizado
  # Añadimos el coeficiente de simetria estandarizado a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de simetria estandarizado"] <- coeficiente_simetria_estandarizado
  
  # Calculamos el coeficiente de curtosis (Fisher)
  # Formula: (media(diferencia a la cuarta) / desviacion tipica^4) - 3
  (coeficiente_curtosis_fisher <- round(sum(tabla_valores3$Diferencia_cuarta) / (cuenta * desviacion_tipica^4) - 3, 4))
  #coeficiente_curtosis_fisher
  # Añadimos el coeficiente de curtosis a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de curtosis (Fisher)"] <- coeficiente_curtosis_fisher
  
  # Calculamos el coeficiente de curtosis (Fisher) aproximado
  # Formula: (suma(f.r. * diferencia a la cuarta de cada intervalo) / desviacion tipica aprox^4) - 3
  (coeficiente_curtosis_fisher_aprox <- round(sum(tabla_frecuencias3$Frecuencia_relativa * tabla_frecuencias3$Diferencia_cuarta) / (desviacion_tipica_aprox^4) - 3, 4))
  #coeficiente_curtosis_fisher_aprox
  # Añadimos el coeficiente de curtosis aproximado a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de curtosis (Fisher) aproximado"] <- coeficiente_curtosis_fisher_aprox
  
  # Calculamos el coeficiente de curtosis estandarizado
  # Formula: (n(n+1)/((n-1)(n-2)(n-3))) * suma( ((x - media)/(cuasidesviacion tipica))^4 ) - (3(n-1)^2)/((n-2)(n-3))
  (coeficiente_curtosis_estandarizado <- round((cuenta * (cuenta + 1) / ((cuenta - 1) * (cuenta - 2) * (cuenta - 3))) * sum(((tabla_valores3$valores - media) / cuasidesviacion_tipica)^4) - (3 * (cuenta - 1)^2) / ((cuenta - 2) * (cuenta - 3)), 4))
  #coeficiente_curtosis_estandarizado
  # Añadimos el coeficiente de curtosis estandarizado a la tabla
  tabla_datos3$Valores[tabla_datos3$Dato == "Coeficiente de curtosis estandarizado"] <- coeficiente_curtosis_estandarizado
  
  # Finalmente mostramos la tabla
  tabla_datos3
  
  # Una vez calculados estos datos, podemos añadir a nuestra tabla de frecuencias una columna con los datos normalizados
  # Normalizamos los datos
  # formula: e^(-(x - media)^2 / (2 * desviacion_tipicar^2))/sqrt(2 * pi * desviacion_tipica^2)
  tabla_frecuencias3$Normalizado <- round(exp(-(tabla_frecuencias3$Media_intervalo - media)^2 / (2 * desviacion_tipica^2)) / sqrt(2 * pi * desviacion_tipica^2), 4)
  
  # Mostramos la tabla final
  tabla_frecuencias3
  
  # Ahora hagamos los graficos
  # Cargar libreria ggplot2
  library(ggplot2)
  # Empezemos con un histograma con las f.a. de los intervalos
  ggplot(tabla_frecuencias3, aes(x = as.factor(Intervalo), y = Frecuencia_absoluta, fill = "f.a.")) +
    geom_bar(stat = "identity") +  
    scale_x_discrete(name = "Intervalo") +  
    scale_y_continuous(breaks = seq(0, 10, by = 1)) +  
    labs(x = "Intervalo", y = "Frecuencia absoluta", title = "Histograma de frecuencias", fill = "f.a.") +
    scale_fill_manual(values = c("f.a." = "blue")) +  
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    geom_hline(yintercept = seq(0, 10, by = 1), linetype = "dashed", color = "gray")  
  
  # Hagamos otro histograma igual, pero con las f.a.a.
  ggplot(tabla_frecuencias3, aes(x = as.factor(Intervalo), y = Frecuencia_absoluta_acumulada, fill = "f.a.a.")) +
    geom_bar(stat = "identity") +  
    scale_x_discrete(name = "Intervalo") +  
    scale_y_continuous(breaks = seq(0, 30, by = 5)) +  # Eje Y de 5 en 5 hasta 30
    labs(x = "Intervalo", y = "Frecuencia absoluta acumulada", title = "Histograma de frecuencias", fill = "f.a.a.") +
    scale_fill_manual(values = c("f.a.a." = "blue")) +  # Color azul
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    geom_hline(yintercept = seq(0, 30, by = 5), linetype = "dashed", color = "gray")  # Líneas horizontales cada 5
  
  # Hagamos un poligono de frecuencias solo con la f.r. usando las mitades de los intervalos
  # Cargamos la libreria dplyr
  library(dplyr)  # Para usar select() y bind_rows()
  
  # Crear la versión extendida de la tabla con solo las columnas necesarias
  tabla_frecuencias_extendida <- bind_rows(
    data.frame(Media_intervalo = 50, Frecuencia_relativa = 0),
    tabla_frecuencias3 %>% select(Media_intervalo, Frecuencia_relativa),
    data.frame(Media_intervalo = 100, Frecuencia_relativa = 0)
  )
  
  # Ahora graficamos
  ggplot(tabla_frecuencias_extendida, aes(x = Media_intervalo, y = Frecuencia_relativa, color = "f.r.")) +
    geom_line(lwd = 1) +  
    geom_point(shape = 18, size = 3, color = "blue") +  # Rombo en cada punto
    scale_x_continuous(breaks = seq(50, 100, by = 10)) +  # Ahora incluye 50 y 100
    scale_y_continuous(breaks = seq(0, 0.40, by = 0.05), limits = c(0, 0.40)) +  
    scale_color_manual(values = c("f.r." = "blue")) +  
    labs(x = "Media de intervalo", y = "Frecuencia relativa", title = "Polígono de Frecuencias", color = "f.r.") +
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    geom_hline(yintercept = seq(0, 0.40, by = 0.05), linetype = "dashed", color = "gray")  
  
  # Hagamos un poligono de frecuencias acumuladas solo con la f.r.a. empezando desde 45 hasta 105
  # Crear la versión extendida de la tabla con solo las columnas necesarias
  tabla_frecuencias_extendida <- bind_rows(
    data.frame(Fin = 45, Frecuencia_relativa_acumulada = 0),
    data.frame(Fin = 55, Frecuencia_relativa_acumulada = 0),
    tabla_frecuencias3 %>% select(Fin, Frecuencia_relativa_acumulada),
    data.frame(Fin = 105, Frecuencia_relativa_acumulada = 1)
  )
  
  # Ahora graficamos
  ggplot(tabla_frecuencias_extendida, aes(x = Fin, y = Frecuencia_relativa_acumulada, color = "f.r.a.")) +
    geom_line(lwd = 1) +  
    geom_point(shape = 18, size = 3, color = "blue") +  # Rombo en cada punto
    scale_x_continuous(breaks = seq(45, 105, by = 10)) +  # Ahora incluye 45 y 105
    scale_y_continuous(breaks = seq(0, 1.2, by = 0.1), limits = c(0, 1)) +  
    scale_color_manual(values = c("f.r.a." = "blue")) +  
    labs(x = "Media de intervalo", y = "Frecuencia relativa acumulada", title = "Polígono de Frecuencias Acumuladas", color = "f.r.a.") +
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    geom_hline(yintercept = seq(0, 1, by = 0.1), linetype = "dashed", color = "gray")
  
  # Hagamos un poligono de frecuencias que muestre el area de la f.r. y los datos normalizados
  # Crear la versión extendida de la tabla con solo las columnas necesarias 
  tabla_frecuencias_extendida <- bind_rows(
    data.frame(Media_intervalo = 50, Altura_fr = 0),
    tabla_frecuencias3 %>% select(Media_intervalo, Altura_fr),
    data.frame(Media_intervalo = 100, Altura_fr = 0)
  )
  
  # Ahora creamos la tabla con los datos normalizados
  tabla_frecuencias_extendida_normalizada <- bind_rows(
    data.frame(Media_intervalo = 50, Normalizado = 0.002),
    tabla_frecuencias3 %>% select(Media_intervalo, Normalizado),
    data.frame(Media_intervalo = 100, Normalizado = 0.002)
  )
  
  # Ahora graficamos ambas tablas
  ggplot() +
    # Polígono de frecuencias original (azul)
    geom_line(data = tabla_frecuencias_extendida, aes(x = Media_intervalo, y = Altura_fr, color = "Polígono f.r. (área)"), 
              lwd = 1, stat = "smooth", method = "loess", se = FALSE) +
    geom_point(data = tabla_frecuencias_extendida, aes(x = Media_intervalo, y = Altura_fr), 
               shape = 18, size = 3, color = "blue") +
    
    # Polígono normalizado (rosa)
    geom_line(data = tabla_frecuencias_extendida_normalizada, aes(x = Media_intervalo, y = Normalizado, color = "Normal"), 
              lwd = 1, stat = "smooth", method = "loess", se = FALSE) +
    geom_point(data = tabla_frecuencias_extendida_normalizada, aes(x = Media_intervalo, y = Normalizado), 
               shape = 18, size = 3, color = "deeppink") +
    
    # Escalas
    scale_x_continuous(breaks = seq(50, 100, by = 10)) +
    scale_y_continuous(breaks = seq(0, 0.04, by = 0.005), limits = c(0, 0.04)) +
    scale_color_manual(values = c("Polígono f.r. (área)" = "blue", "Normal" = "deeppink")) +
    
    # Etiquetas y tema
    labs(x = "Media de intervalo", y = "Altura de la f.r.", 
         title = "Polígono de Frecuencias con Normalización", color = "Frecuencias") +
    theme_minimal() +
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    
    # Líneas horizontales de referencia
    geom_hline(yintercept = seq(0, 0.04, by = 0.005), linetype = "dashed", color = "gray")
  
  # Ahora hagamos un histograma de las areas de la f.r. de cada intervalo
  ggplot(tabla_frecuencias3, aes(x = as.factor(Intervalo), y = Altura_fr, fill = "Altura f.r.")) +
    geom_bar(stat = "identity") +  
    scale_x_discrete(name = "Intervalo") +  
    scale_y_continuous(breaks = seq(0, 0.04, by = 0.005), limits = c(0, 0.04)) +  
    labs(x = "Intervalo", y = "Altura f.r.", title = "Histograma de Frecuencias (área)", fill = "Altura f.r.") +
    scale_fill_manual(values = c("Altura f.r." = "blue")) +  
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    geom_hline(yintercept = seq(0, 0.04, by = 0.005), linetype = "dashed", color = "gray")
  
  # Ahora hagamos un histograma de las areas de la f.r.a. de cada intervalo
  ggplot(tabla_frecuencias3, aes(x = as.factor(Intervalo), y = Altura_fra, fill = "Altura f.r.a.")) +
    geom_bar(stat = "identity") +  
    scale_x_discrete(name = "Intervalo") +  
    scale_y_continuous(breaks = seq(0, 0.12, by = 0.02), limits = c(0, 0.12)) +  
    labs(x = "Intervalo", y = "Altura f.r.a.", title = "Histograma de Frecuencias (área acumulada)", fill = "Altura f.r.a.") +
    scale_fill_manual(values = c("Altura f.r.a." = "blue")) +  
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    geom_hline(yintercept = seq(0, 0.12, by = 0.02), linetype = "dashed", color = "gray")
  
  # Ahora hagamos un histograma de la f.r.a. de cada intervalo
  ggplot(tabla_frecuencias3, aes(x = as.factor(Intervalo), y = Frecuencia_relativa_acumulada, fill = "f.r.a.")) +
    geom_bar(stat = "identity") +  
    scale_x_discrete(name = "Intervalo") +  
    scale_y_continuous(breaks = seq(0, 1.2, by = 0.2), limits = c(0, 1.2)) +  
    labs(x = "Intervalo", y = "Frecuencia relativa acumulada", title = "Histograma de Frecuencias", fill = "f.r.a.") +
    scale_fill_manual(values = c("f.r.a." = "blue")) +  
    theme_minimal() + 
    theme(
      panel.grid = element_blank(),
      legend.position = "right"
    ) +
    geom_hline(yintercept = seq(0, 1.2, by = 0.2), linetype = "dashed", color = "gray")