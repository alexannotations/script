#!/bin/bash
# Revision de los tipos de operadores

numeroA=10
numeroB=3

echo "numeros: A=$numeroA y B=$numeroB"

echo " -- operadores aritmeticos -- "

# en la operacion observe el unico signo $ y los parentesis dobles 
# para que se consideren como enteros en lugar de considerarse como un string
#   $() se utiliza para ejecutar un comando y obtener su salida.
#   files=$(ls) # Contenido del directorio de trabajo
#   $(()) se utiliza para evaluar expresiones numéricas en el dominio de los números enteros.
#   result=$(( 1 + 1 )) # 2
#   Por lo tanto, al intentar evaluar $( 1 + 1) daría un error porque no es un comando válido.
#
# echo "1.1 + 1.1" | bc # el comando bc es una calculadora por tanto calcularia 2.2

echo "sumar: A + B = " $((numeroA + numeroB))
echo "restar: A - B = " $((numeroA - numeroB))
echo "multiplicar: A * B = " $((numeroA * numeroB))
echo "dividir: A / B = " $((numeroA / numeroB))     # observe que solo maneja enteros
echo "residuo: A % B = " $((numeroA % numeroB))


# operadores relacionales
echo -e "\n -- operadores relacionales -- " # el parametro -e permite dar un salto con \n
echo "A > B = " $((numeroA > numeroB))  # true
echo "A < B = " $((numeroA < numeroB))  # false
echo "A >= B = " $((numeroA >= numeroB))  # true
echo "A <= B = " $((numeroA <= numeroB))  # false
echo "A == B = " $((numeroA == numeroB))  # false
echo "A != B = " $((numeroA != numeroB))  # true


# operadores de asignacion
echo -e "\n -- operadores de asignacion -- "
echo "Sumar A += B        -->  A=" $((numeroA += numeroB))   # A+B=A    $numeroA
echo "Restar A -= B       -->  A=" $((numeroA -= numeroB))
echo "multiplicar A *= B  -->  A=" $((numeroA *= numeroB))
echo "dividir A /= B      -->  A=" $((numeroA /= numeroB))
echo "residuo A %= B      -->  A=" $((numeroA %= numeroB))

