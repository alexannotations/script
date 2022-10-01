# ! /bin/bash

# las funciones siempres se declaran al principio
# se llaman funciones y envian parametros (paso de argumentos)

opcion=0

# Función para instalar
instalar () {
    echo "Instalar ..."
}

# Función para desinstalar 
desinstalar () {
    echo "Desinstalar ..."
}

# Función para respaldar
sacar_respaldo () {
    echo "Hacer respaldo..."
    # mostramos el parametro $1 recibido $directorioBackup
    echo "Directorio backup: $1"
}

# Función para restaurar un respaldo
restaurar_respaldo () {
    echo "Restaurar respaldo..."
    echo "Directorio respaldo: $1"
}


while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "_________________________________________"
    echo "         - Programa de Utilidad          "
    echo "_________________________________________"
    echo "                MENÚ PRINCIPAL           "
    echo "_________________________________________"
    echo "1. Instalar "
    echo "2. Desinstalar "
    echo "3. Hacer un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            instalar
            sleep 3
            ;;
        2) 
            desinstalar
            sleep 3
            ;;
        3) 
            # se define la variable directorioBackup
            read -p "Directorio Backup:" directorioBackup
            # enviamos el parametro $directorioBackup a la funcion sacar_respaldo()
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4) 
            read -p "Directorio de Respaldos:" directorioRespaldos
            restaurar_respaldo $directorioRespaldos
            sleep 3
            ;;
        5)  
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done    
