# !/bin/bash
# Script para realizar algunas operaciones utilitarias

echo "Hola, bienvenido"
echo "Programa Ejemplo Utilidades"

# https://linuxize.com/post/bash-heredoc/
<< 'MULTILINE-COMMENT'
    Everything inside the
    HereDoc body is
    a multiline comment
MULTILINE-COMMENT

<< 'COMENTARIO1'
    Programa para administrar las utilidades
COMENTARIO1

echo "tu estas en el directorio: " 
pwd

echo "type muestra informacion sobre como se interpreta un comando y verificar el nombre unico del archivo"
type -a ls     # muestra como se interpreta el comando ls
type -t ls      # muestra el tipo de comando


exit 0
