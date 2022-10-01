# ! /bin/bash

# scp transfiere por medio del protocolo ssh (Copia todo)
# rsync sincroniza la informacion


echo "Empaquetar y transferir por la red a otro equipo utilizando el comando rsync"

host=""
usuario=""

read -p "Ingresar el host:" host
read -p "Ingresar el usuario:" usuario
echo -e "\nProcesando y transfiriendo ..."

# -a: Modo archivo. (Recursivo, links simbólicos, preservar permisos/dueño/grupo, etc.)
# -v: Verbose
# -z: comprimir
# -P progreso y parcial
# sustitucion de comandos

# rsync --progress -avzh
# hostOriginal hostDuplicate
# rsync -avzP $(pwd) $usuario@$host:/tmp 

# el parámetro -e te permite utilizar una protocolo de conexión sobre el cual ejecutar 
# la transferencia de información que realizar rsync. 
# ssh puerto 22 con la llave privada
rsync -avzP -e "ssh -p 22 -i ~/.ssh/id_rsa" $(pwd) $usuario@$host:/tmp
