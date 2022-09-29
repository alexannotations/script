#!/bin/bash

#   http://mywiki.wooledge.org/BashFAQ/031
#   https://linuxhint.com/bash_operator_examples/
#   https://stackoverflow.com/questions/2933843/why-0-is-true-but-false-is-1-in-the-shell

# []
# es un alias del comando test, nos permite averiguar si un comando existe o un número es igual a otro, se ocupan los operadores: Ver lista de operadores
# [[]]
# es una mejora posterior al comando test, nos permite hacer todo lo mismo que con el comando test y además probar patrones(?)
# (())
# Nos permite hacer comprobaciones aritméticas, da soporte a la mayor parte de los operadores aritméticos
# ()
# Nos permite correr un comando en un subshell, retornando el codigo de salida para que se actúe respecto a ello
# comando
# Los comandos por lo general siempre retornan un comando de salida 0 o 1

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese la direccion del archivo: " pathArchivo

echo -e "\nExpresiones condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "Es niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "Es adolecente"
else
    echo "Mayor de edad"
fi


echo -e "\nExpresiones condicionales con strings"
if [ $pais == "USA" ]; then
    echo "Es gringo"
elif [ $pais = "MX" ] || [ $pais = "CO" ]; then
    echo "Es latino"
else
    echo "Se desconoce"
fi

# verifica si un directorio existe
echo -e "\nExpresiones condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo NO existe"
fi

