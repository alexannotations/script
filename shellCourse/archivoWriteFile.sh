# ! /bin/bash
# Como se escribe en un archivo

# como ejecutar
# archivoWriteFile.sh file "añadiendo valores con cat"

# echo siempre imprime en la standar output
# cat tiene varias salidas para imprimir

# Redireccion de la standar output
# >> si no existe el archivo se creara, si existe, se concatenara al final del archivo.
# >  si no existe el archivo se creara, si existe, será reemplazado

# EOM: End Of Message
# EOF: End Of File

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1
# echo $2 >> $1

# Adición multilínea
# cat tambien sirve para escribir un archivo
cat <<EOM >>$1
$2
EOM
