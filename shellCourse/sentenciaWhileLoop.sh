#!/bin/bash
# El ciclo whilepermite ejecutar un bloque de instrucciones 
# mientras se cumpla la condición. Primero comprueba que se cumpla la condición 
# y entonces, ejecuta el segmento de código contenido entre las palabras do y done,
# así sucesivamente hasta que la condición no se cumpla.

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

