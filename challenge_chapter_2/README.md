# Reto

Utiliza DartPad (https://dartpad.dartlang.org/ ) para generar el siguiente reto:

Para correr el reto
```console
Reto1: dart run challenge_chapter_2 1

Reto2(Dollar): dart run challenge_chapter_2 2 D 
Reto2(Euro): dart run challenge_chapter_2 2 E
Reto2(Pesos): dart run challenge_chapter_2 2 C

Reto3: dart run challenge_chapter_2 3

Reto4: dart run challenge_chapter_2 4

```

# Ejercicio 1

A partir del siguiente arreglo de edades var ages = [33, 15, 27, 40, 22,19,32,76,45];Crea un programa en Dart que las ordene e imprima la edad mayor, la edad menor y la edad promedio con sus respectivos mensajes: “La edad mayor es: ” , “La edad menor es: ”, “La edad promedio es: ”

Al final en comentarios de esta página compartenos tu solución. 

# Ejercicio 2

Dada la siguiente lista de ingresos en dólares:
listaDolares = [20000,30000,4000,2500,1000,7600]
Se le pide hacer un programa que muestre lo siguiente:

1. Tener una variable que cuando valga C para muestre la lista en pesos colombianos (se
sabe que un dólar es **4,773** pesos colombianos aproximadamente) D en dólares 
notifique que no es necesaria una conversión pues ya estaba en dólares y E para
convertir en euros (se sabe que un dólar es 0.92 euros aproximadamente). En caso
de que la variable ingrese una letra diferente notifíquele que es una entrada no
válida y regrese al menú principal.
2. Se sabe que los dependiendo de los ingresos mensuales se divide de la siguiente
manera:
• Menor a 1000 dólares de ingreso mensuales ingresos bajos
• Mayor a 1000 pero menor a 7000 dólares mensuales ingresos medios
• Desde 7000 pero menores a 20000 dólares mensuales ingresos altos
• Desde 20000 en adelante ingresos elevados
Muestre una lista con esta clasificación
3. Muestre la siguiente información:
• Ingreso más alto
• Ingreso más bajo
• Promedio de ingresos
4. Despedirse
Si la persona ingresa cualquier otro número se debe notificar al usuario que la entrada no
es válida

# Ejercicio 3

Dada una lista de Nombres, mostrar en pantalla la cantidad de letras y si esa cantidad es par o impar

# Ejercicio 4

Cree las siguientes clases y un objeto a partir de las misma que ejecute todas las acciones incluidas
las de su padre:

1. Cree la clase Persona con id, nombre, edad y cree la función hablar la cual dado mensaje
se muestra en pantalla y cree la clase caminar que dado una cantidad de pasos muestra en
pantalla cuanto ha caminado (por ejemplo si se ingresa 3 mostrará en pantalla he dado 1 paso, 2 pasos, 3 pasos).
2. Herede la clase Persona y cree la clase Doctor el cual tendrá el nuevo atributo de
especialidad y podrá ejecutar una nueva función, la cual es dado una enfermedad muestre
en pantalla: procedo a tratar dicha enfermedad
3. Herede la clase Persona y cree la clase Nutricionista y cree un atributo que se refiera a la
universidad en la que fue egresado. También una función que devuelva el IMC dado el
peso y altura de un paciente
4. Herede la clase Persona y cree la clase Abogado adicione dos atributos uno asociado a su
especialidad y el otro a la universidad de la que egresó. Finalmente cree la función que
dado un nombre y el caso de cliente el abogado diga : procedo a representar al cliente
{nombre} en el caso {caso}
