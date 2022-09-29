#!/bin/bash

# El index comienza en 0
# el array puede seguir incrementando su tamaño a diferencia de los lenguajes de programacion
# para crear un array se colocan los elementos dentro de brackets o usar rangos
#       nameArray = (valor1, valor2, ... , valorN)
# para remover los elementos de un array se utiliza el comando unset nameArray[index]


arregloNumeros=(1 2 3 4 5 6)
arregloString=(Susana, Mariela, Damaris, Estefany)
arregloRangos=({A..Z} {10..20})


#Imprimir todos los valores
echo "Array de Números:${arregloNumeros[*]}"
echo "Array de Cadenas:${arregloString[*]}"
echo "Array de Números:${arregloRangos[*]}"

#Imprimir el tamaño de los arreglos
echo "Dimensión Números:${#arregloNumeros[*]}"  # observe el #
echo "Dimensión Cadenas:${#arregloString[*]}"
echo "Dimensión Números:${#arregloRangos[*]}"

#Imprimir la posición 3 del arreglo de números, cadenas de rango
echo "index 3 de Números:${arregloNumeros[3]}"   # considere el index desde 0
echo "index 3 de Cadenas:${arregloString[3]}"
echo "index 3 de Rangos:${arregloRangos[3]}"

#Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20    # agrego 20 a la octava (ultima) posicion, considere el index 0
unset arregloNumeros[0] # elimino la primer posicion 
echo "Arreglo de Números:${arregloNumeros[*]}"
echo "Tamaño arreglo de Números:${#arregloNumeros[*]}"
