#!/bin/bash

# while [ condition ]
#   do
#       statement1
#       statement2
#       ...
#       statementN
# done

# Iterar lista de valores basada en una condicion logica que debe ser verdadera

numero=1

# -ne Not Equal to
while [ $numero -ne 10 ]
    do
        echo "Imprimiendo $numero veces"
        # parentesis dobles para realizar la operacion matematica
        numero=$(( numero + 1 ))
    done

