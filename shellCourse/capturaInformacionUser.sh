#!/bin/bash

# Para poder capturar información tenemos dos formas dentro de un programa Bash.
#     Utilizando en conjunto con el comando echo
#     Utilizando directamente el comando read
# 
# Otras opciones más utilizadas para Read
#   -s: Modo Sigiloso. No muestra ningún caracter en la terminal, util para contraseñas o información sensible.
#   -n [num]: Permite leer como máximo n caracteres.
#   -r: Toma el botón de retroceso o backspace como un caracter y no borra ningun otro caracter previamente escrito.
# 
# La variable “$REPLY” es donde se almacenará la información del standard input

option=0
option2=""

###############################################################################
echo "Programa para capturar la informacion del usuario utilizando echo, read y \$REPLY"

echo -n "Ingresar una opcion: " # muestra el mensaje sin saltar de linea
read
option=$REPLY
echo "Usted ingreso: $option"

echo -n "Ingresar otra opcion: "
read
option2=$REPLY
echo "Usted ingreso: $option2"


###############################################################################
echo -e "\nPrograma para capturar la informacion del usuario utilizando read"

read -p "Ingresar una opcion: " option   # -p: Permite pedir la informacion. seguido del nombre de la variable para almacenar la informacion
read -p "Ingresar una segunda opcion: " option2
echo "Usted ingreso como opciones: $option y $option2"
