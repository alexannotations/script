# ! /bin/bash
# Como se lee en un archivo

# como ejecutar
# archivoReadFile.sh ruta_al)archivo

# Esta sintaxis es la redirección de estandar input, 
# se pasa a read ruta_al_archivo como si fuera la entrada interactiva, 
# pero directamente toma el archivo
read linea < ruta_al_archivo

echo "Leer en un archivo"
# leer los argumentos con cat
cat $1

echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`   # asigna la salida de parametros del comando cat a la variable
echo "$valorCat"

echo -e "\nLeer archivos línea por línea utilizando while"
# La variable de entorno IFS que significa Internal Field Separator (separador de campos internos), 
# sirve para indicar que valor se usa como separador
# Establecer IFS como vacío solo para la ejecución de read (evita problemas de separaciones no deseadas)
# El bloque while termina por fin del archivo


# La ejecución del while es sobre un comando
# entonces corre siempre que el comando sea exitoso
#  El comando es:   IFS= read linea

# while read linea
while IFS= read linea
    do
        echo "$linea"   # variable utilizada para poder leer el contenido
    done < $1   # recibe el argumento $1
