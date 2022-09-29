#!/bin/bash

regexedad='^[1-9]{1,2}$'    # numeros del uno al nueve, entre 1 y 2 numeros
regexnombre='^([A-Z]{1}[a-z]*)$'
regexapellido='^[A-Z]{1}[a-z]*$'
regexdireccion='^[a-zA-Z0-9]*[:space:]|[:blank:]*$'
regextelefono='^[0-9]{10}$'

read -p "Ingrese su nombre: " nombre
read -p "Ingrese su Apellido: " apellido
read -n2 -p "Ingrese su edad: " edad
read -p "ingrese su dirección: " direccion
read -n10 -p "ingrese su numero de telefono: " telefono

echo -e "\n"

if [[ $edad =~ $regexedad ]]; then
	echo "edad valida: $edad"
else
	echo "edad INVALIDA: $edad"
fi


if [[ $nombre =~ $regexnombre ]]; then
	echo "nombre valido: $nombre"
else
	echo "nombre INVALIDO: $nombre"
fi


if [[ $apellido =~ $regexapellido ]]; then
	echo "apellido valido: $apellido"
else
	echo "apellido INVALIDO: $apellido"
fi


if [[ $direccion =~ $regexdireccion ]]; then
	echo "Dirección valida: $direccion"
else
	echo "Dirección INVALIDA: $direccion"
fi


if [[ $telefono =~ $regextelefono ]]; then
	echo "telefono valido: $telefono"
else
	echo "telefono INVALIDO: $telefono"
fi

