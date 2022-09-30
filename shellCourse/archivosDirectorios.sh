# ! /bin/bash

# como ejecutar
# archivosDirectorios.sh d nombreCarpeta
# archivosDirectorios.sh f nombreArchivo

# Recibe como argumentos:
#   d para directorio
#   f para archivo
# el nombre del directorio o archivo

echo "Archivos - Directorios"
# recibimos como argumento si es un directorio $1
if [ $1 = "d" ]; then
    # recibimos como argumento el nombre del directorio $2
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [ $1 == "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opción: $1"
 fi
