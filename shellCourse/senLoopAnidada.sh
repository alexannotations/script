# ! /bin/bash

echo "Loops Anidados"

# sustitucion de comandos, para revisar los directorios
# recorre hasta que ya no encuentra archivos
for fil in $(ls)
    do
        # rango de lista de valores
        # recorre mientras permanezca en el rango
        for nombre in {1..4}
            do
                echo "Nombre archivo: $fil _ $nombre"
            done    # cierra 1er loop
    done    # cierra 2o loop
