#!/bin/bash
#Programa para validar procesos, memoria, recursos, variables.
clear
echo ""
echo "**** PROGRAMA VALIDACIÓN RECURSOS ****"
echo ""
opcion=0

while :
do
        #Limpiar Pantalla
        clear
        echo " * Main Menu * "
        echo ""
        echo "1)Current Processes "
        echo "2)Free Memory "
        echo "3)HARD DRIVE Memory Space "
        echo "4)NetWork Config"
        echo "5)ENV VARs "
        echo "6)Program SetUp "
        echo "7)CCopy a .SH File "
        echo "8)Make a BackUp as inf-txt"
        echo "9)Leave "
        echo ""
        #Leer datos de usuario
        read -n1 -p "Enter the >Options (1 - 8): " opcion
        #Validar opción ingresada
        case $opcion in
                1)
                        echo -e "\n..Procesos Actuales.."
                        ps axu
                        sleep 3
                        ;;
                2)
                        echo -e "\n..Memoria Disponible.."
                        free
                        sleep 3
                        ;;
                3)
                        echo -e "\n..Espacion en disco.."
                        df -h
                        sleep 3
                        ;;
                4)
                        echo -e "\n..Información Red.."
                        ifconfig -a
                        sleep 3
                        ;;
                5)
                        echo -e "\n..Variables de Entorno Configuradas.."
                        #printenv
                        env -u VAR
                        sleep 3
                        ;;
                6)
                        echo -e "\n..Información Programa.."
                        dpkg -l | more
                        sleep 3
                        ;;
                7)
                        echo -e "\n..Comprimiedo Archivos.."
                        tar -czvf archivosCompresos.tar.gz $(ls | grep "$*.sh")
                        echo -e "\n SUCESS!!"
                        sleep 3
                        ;;
                        
                8)     	
                	echo -e "\nBackUp Information "
                	dpkg --list > /tmp/info.txt
                	echo "dpkg --list >/tmp/info.txt"
                	tar -czvf info.tar.gz /tmp/info.txt
                	ls -l ./*.tar.gz
                	sleep 2
                	;;
                
                9)
                        echo -e "\n..Saliendo, ¡¡Gracias!!"
                        exit 0
                        ;;
                        
                 *) 
                        echo "\nOpcion no valida, ingrese una opcion del 1-8"
                        sleep 3
                        ;;

        esac
done
