#!/bin/bash

# configuracion de variables de entorno del sistema operativo
cat /etc/profile

<<EJEMPLO-DE-VARIABLE-DE-ENTORNO
# Se inserto en el archivo profile
# Variable de entorno del OS curso
COURSE_NAME=programacion bash
export COURSE_NAME
EJEMPLO-DE-VARIABLE-DE-ENTORNO

# programa para revisar la declaracion de variables
# el alcance de estas variables es solo a nivel de este script
opcion=5
nombre="lex a"
last=ca

echo "Opcion: $opcion y nombre: $nombre$last"

# exportar la variable nombre para que este disponible para los demas procesos
# la variable tiene un alcance mayor
export nombre
# llamar al siguiente script para recuperar la variable
./shellCourse/variableExport.sh
