#!/bin/bash

# Paso de argumentos
# Los argumentos se envian al momento de ejecutar el programa
parametro1=$1
parametro2=$2

echo "Parametro 1: $parametro1, parametro 2: $parametro2"
echo "El numero de parámetros enviados es: $#"
echo "Los parámetros enviados son: $*"


echo -e "\nIdentificador (parámetro especial) \$0"
echo "Nombre del script: $0" 


# Lista de parámetros (un parámetro por argumento) 
echo -e "\nIdentificador (parámetro especial) \$@"
echo "Parámetros :" 
for param in $@
    do 
        echo "$param" 
    done 



# Muestra el PID del script 
# El número de proceso del shell actual. Para scripts de shell, 
# este es el ID de proceso bajo el cual se están ejecutando.
echo -e "\nIdentificador (parámetro especial) \$$"
echo "El PID del script ejecutado es: $$" 



# Generamos un error
echo -e "\nGenerando un error . . ." 
lss -l
# El estado de salida del último comando ejecutado.
# 0 si tuvieron éxito y 1 si no tuvieron éxito, u otro estado para diferenciar tipos de errores
echo "El código de retorno del comando erróneo es: $?" 

echo -e "\nPARÁMETRO ESPECIAL \$? con estado: $?"   # 0 éxito



# Creamos un proceso en segundo plano 
echo -e "\nPARÁMETRO ESPECIAL \$!"
echo "Ejecución de 'sleep' en segundo plano..."
sleep 10 &      # nombreComandoPrograma &
# Muestra el PID del proceso ejecutado en segundo plano 
echo "El PID del comando 'sleep' en segundo plano es: $!" 

