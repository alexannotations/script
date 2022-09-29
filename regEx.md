# Expresiones Regulares
https://bioinf.comav.upv.es/courses/unix/expresiones_regulares.html

Cuando se solicita ingresar información través de un programa por parte del usuario que está utilizando el programa, es importante considerar la validación de la información, permitiendo asegurar la calidad de la información recibida, procesada y almacenada.
Se utiliza expresiones regulares, básicamente son cadenas de caracteres que definen un patrón de búsqueda que se valida frente a una información específica para asegurar que cumple la validación definida.

Criterios utilizados en las expresiones regulares:
- ```^``` Caracter que representa el inicio de la expresión regular.
- ```$``` Caracter que representa el final de la expresión regular.
- ```*``` Caracter que representa cero o más ocurrencias de la expresión
- ```+``` Caracter que representa una o más ocurrencias de la expresión.
- ```{n}```Representa ```n``` veces de una expresión.
- ```[ ]``` Representa un conjunto de caracteres, por ejemplo: ```[a-z]``` representa las letras del abecedario de la ```a``` a la ```z```.

Tomando en cuenta estos criterios se realizará un programa que valida la siguiente información:
* Número de Identificación de un tamaño de 10 números. (Ejemplo: 1717836520)
* País de Origen denotado por dos letras en un rango específico. (Ejemplo: MX, EC, CO, US)
* Fecha de Nacimiento en el formato ```yyyyMMDD```. (Ejemplo: 20181222)

Primero se definirá las expresiones regulares y se solicitará la información del usuario:
```
#!/bin/bash
# expresiones regulares

    identificacionRegex='^[0-9]{10}$'
    paisRegex='^EC|COL|US$'
    fechaNacimientoRegex='^19|20[0-8]{2}[1-12][1-31]$'

    echo "Expresiones regulares"
    read -p "Ingresar una identificacion:" identificacion
    read -p "Ingresar las iniciales de un país [EC, COL, US]:" pais
    read -p "Ingresar la fecha de nacimiento [yyyyMMdd]:" fechaNacimiento 
```

Luego se validará cada expresión regular comenzando con la identificación, para lo cual para cada validación se utilizará la sentencia condicional ```if``` y para comparar la expresión se debe utilizar el siguiente formato especial ```if [[ $variable =~ $expresionRegular ]]``` como se muestra a continuación.
```
    #Validación Identificación
    if [[ $identificacion =~ $identificacionRegex ]]; then
        echo "Identificación $identificacion válida"
    else
        echo "Identificación $identificacion inválida"
    fi

    #Validación País
    if [[ $pais =~ $paisRegex ]]; then
        echo "País $pais válido"
    else
        echo "País $pais inválido"
    fi

    #Validación Fecha Nacimiento
    if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
        echo "Fecha Nacimiento $fechaNacimiento válida"
    else
        echo "Fecha Nacimiento $fechaNacimiento inválida"
    fi
```

Para realizar la ejecución de la aplicación de ambos escenarios (correcto e incorrecto) ejecute:
ejecutarlo con ```sh``` reduce las funciones [[ es una de las caracteristicas deshabilitadas.
```
bash ./shellCourse/validacionRegEx.sh
```
