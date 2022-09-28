#!/bin/bash

# require install neofetch

today=$(date +"%Y")     # guarda en una variable el año actual
logoLinux=`neofetch`    # ejecuta el comando neofetch y su salida se guarda en la variable
archivo=archivoLogo$today # guarda el nombre del archivo en una variable

touch $archivo   # crea un archivo con el nombre nuevoLogo<currentYear>, tomado de la variable

printf "\nHoy es $today\n\n" > $archivo # Escribe la primera linea del archivo con el año
echo "$logoLinux" >> $archivo   # Anexa el logo de la distribucion al final del archivo

cat $archivo
