#!/bin/bash

# Sentencia case
# https://stackoverflow.com/questions/2264428/how-to-convert-a-string-to-lower-case-in-bash


opcion=""

read -p "Ingrese la opcion (A-Z): " opcion
echo -e "\n"

case $opcion in 
    "A") echo -e "\nGuardar archivo";;
    "B") echo -e "\nEliminar archivo";;     # puede ser un string
    [C-E]) echo "NO esta implementada";;    # regex
    *)  echo "Opcion incorrecta";;

esac

