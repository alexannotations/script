# ! /bin/bash
# Programa que permite manejar las utilidades
# Autor: Marco Toscano Freire - @martosfre
# modified by: alex

opcion=0

# while infinito, hasta ejecutar una sentencia de salida
while :
do
    clear   #Limpiar la pantalla y Desplegar el menú de opciones
    echo "_________________________________________"
    echo     "   PUTIL - Programa de Utilidad   "
    echo "_________________________________________"
    echo "                MENÚ PRINCIPAL           "
    echo "_________________________________________"
    echo "1. Instalar"
    echo "2. Desinstalar"
    echo "3. Hacer respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    #Leer opcion seleccionada - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            echo -e "\nInstalar ....."
            sleep 3
            ;;
        2) 
            echo -e "\nDesinstalar ...."
            sleep 3
            ;;
        3) 
            echo -e "\nHacer respaldo..."
            sleep 3
            ;;
        4) 
            echo -e "\nRestaurar respaldo..."
            sleep 3
            ;;
        5)  
            echo -e "\nSalir del Programa"
            exit 0
            ;;
    esac
done
