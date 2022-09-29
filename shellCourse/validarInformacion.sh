# ! /bin/bash

# Cómo validar tamaños y tipo de dato en el ingreso de la información?
#   - Para validar tamaños se utiliza el comando:
#       read -n<numero_caracteres>
#   - Para validar el tipo de datos se utilizan
#       expresiones regulares
# Como capturar la información del usuario y validarla
# Cuando se cumple la condición pasa a la siguiente linea de ejecución

option=0
backupName=""
clave=""

echo "Validar información"

# Acepta el ingreso de información de solo un caracter -p pide info para almacenar en $option
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
# -n10 valida que sean 10 caracteres -p pide información para almacenarla en $backupName
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opción:$option , backupName:$backupName"
# -s no muestra lo que se teclea -p pide la info para almacenarla en $clave
read -s -p "Clave:" clave
echo "Clave: $clave"
