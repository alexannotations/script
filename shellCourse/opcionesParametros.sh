# ! /bin/bash
# Paso de opciones con/sin parámetros

# Envío Opciones / Parámetros
#   - Opciones vs Parámetros
#   - Envío independiente
#   - Envío complementario
#   - Leer los valores
# The total number of command-line arguments is represented by $#
# Las opciones se indican con -
# ejemp. ls -l $HOME (-l es la opcion ; $HOME es el parámetro)


echo "Paso de parámetros y opciones"
echo "Opción 1 enviada: $1"     # se coloca el argumento a enviar, $<numero de argumento>
echo "Opción 2 enviada: $2"
echo "Opciones enviadas: $*"    # muestra todas los argumentos recibidos

echo -e "\n"
echo "Recuperar los valores"
# se usara el ciclo while para recorrer e identificar en los parámetros/opciones recibidos
while [ -n "$1" ]
    do
    case "$1" in    # el caso sea en cualquiera de las siguientes opciones
        -a) echo "-a option utilizada";;
        -b) echo "-b option utilizada";;
        -c) echo "-c option utilizada";;
        *) echo "$! no es una opción, es un parámetro";;
    esac
shift   # toma por default un entero
done
