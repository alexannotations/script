#!/bin/bash

#
# if [ condition ]; then
#    if [ condition ]; then
#       statement 2
#    else
#       statement 3
#    fi
# elif [ condition ]; then
#    statement 2
# else
#    statement 3
# fi

notaClase=0
continua=""

read -n1 -p "Indique cual es su calificacion (1-9): " notaClase

if [ $notaClase -ge 7 ]; then
    echo -e "\nAprobado\n"
    read -p "Seguira estudiando el siguiente nivel (y/n)" continua
    if [ $continua == "y" ]; then
        echo "Bienvenido al nuevo ciclo"
    elif [ $continua == "n" ]; then
        echo "Exito en su proyecto"
    else
        echo "No es una opcion valida" 
    fi  # no olvidar cerrar la condicional
else
    echo -e "\nReprobado\n"
fi
