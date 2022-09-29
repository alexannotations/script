# ! /bin/bash

# Uso de break y continue
# https://linuxize.com/post/how-to-compare-strings-in-bash/
# https://rekkeb.wordpress.com/2009/04/11/curiosidades-java-break-y-continue/

# break sale de la ejecucion de loops for y while
# continue sale de la iteracion actual para continuar con la siguiente

# observa que no imprime los nombres de los archivos que cumplen las condiciones
echo "Sentencias break y continue"
# sustitucion de comandos
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "README.md" ]; then
            break;
            
        # Se usan los corchetes dobles [[ porque la comparacion se realizará con ==
        # el r* indica que la comparacion verificara cualquier archivo 
        # que su nombre comience con r
        # https://stackoverflow.com/questions/229551/how-to-check-if-a-string-contains-a-substring-in-bash
        elif [[ $fil == r* ]]; then
            continue;

        else
            echo "Nombre archivo: $fil _ $nombre"
        fi
    done
done
