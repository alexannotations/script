#!/bin/bash
# El ciclo until, a diferencia del ciclo while, 
# permite ejecutar un bloque de instrucciones 
# mientras no se cumpla una condición dada. 
# A diferencia del while, verifica que la condición sea falsa, 
# entonces ejecuta el segmento de código contenido entre las palabras
# do y done, hasta que la condición se cumpla. https://codingornot.com

contador=0
termina=10
until [ $termina -lt $contador ]
do
  echo $contador
  contador=$(($contador+1))
done
