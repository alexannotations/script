#!/bin/bash

# La sustitución de comandos almacena las salidas de otras sentencias.
# Las dos maneras de hacerlo:
#    Backtick caracter. (`)
#    Signo de dólar con el formato $(comando)
# https://mywiki.wooledge.org/BashFAQ/082
# https://stackoverflow.com/questions/27472540/difference-between-and-in-bash

# $(date +%F)
# The %F option is an alias for %Y-%m-%d

ubicacionActual=`pwd`   # toma la salida de un comando como valor para la variable
infoKernel=$(uname -a)  #
creacion=`date +"fecha_%Y-%m-%d_%H-%M-%S"`    # formatting characters for the date command
fileBackUp="BKU${creacion}"

printf "\n$creacion \n$infoKernel \n$ubicacionActual \n"
touch $fileBackUp & echo "Se creo el archivo: $fileBackUp"
