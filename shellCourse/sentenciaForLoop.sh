#!/bin/bash

# for var in item1 item2 ... itemN
#   do
#       statement1
#       statement2
#       ...
#       statementN
# done

# Se puede iterar lista de valores de:
# numeros, strings, nombres de archivo, argumentos de linea de comandos
# Soporta tambien el For loop three expression


arregloNumeros=(1 2 3 4 5 6)
echo -e "\nIterar Lista de Números"
# num es un alias para la variable que permitira recorrer uno a uno los elementos del array completo
# se convierte el arreglo de numeros a una lista de valores, 
# porque no se puede utilizar directamente la variable $arregloNumeros
for num in ${arregloNumeros[*]}
    do
        echo "Número: $num"  # se usa $num como el alias para el ${arregloNumeros[n]}
    done


echo -e "\nIterar lista de Cadenas"
# Aqui se apunta a una lista de strings separadas por un espacio
for nom in "Mariela" "Estefany" "Samantha" "Daniela"
    do
        echo "Nombres: $nom"
    done


echo -e "\nIterar en Archivos"
# Aqui iterara en todo lo que encuentre en el directorio
for fil in *
    do
        echo "Nombre archivo: $fil"
    done


echo -e "\nIterar utilizando un comando: ls"
# se utiliza la sustitucion de valores
for fil in $(ls)
    do
        echo "Nombre archivo: $fil"
    done


echo -e "\nIterar utilizando el formato tradcional"
# BLOQUES de; incializacion: condicion: iteracion
for ((i=1; i<10; i++))
    do
        echo "Número: $i"
    done

