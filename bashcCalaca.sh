# !/bin/bash
# Owner @freddymm fixed version by @jordam

option=0
ini=0
while :
 do
    if [ $ini == 0 ]; then
    for ((i=0;i<3;i++))
      do
        clear
        echo&quot;███████████████████████████&quot;
        echo&quot;███████▀▀▀░░░░░░░▀▀▀███████&quot;
        echo&quot;████▀░░░░░░░░░░░░░░░░░▀████&quot;
        echo&quot;███│░░░░░░░░░░░░░░░░░░░│███&quot;
        echo&quot;██▌│░░░░░░░░░░░░░░░░░░░│▐██&quot;
        echo&quot;██░└┐░░░░░░░░░░░░░░░░░┌┘░██&quot;
        echo&quot;██░░└┐░░░░░░░░░░░░░░░┌┘░░██&quot;
        echo&quot;██░░┌┘     ░░░░░     └┐░░██&quot;
        echo&quot;██▌░│       ░░░       │░▐██&quot;
        echo&quot;███░│      ░░ ░░      │░███&quot;
        echo&quot;██▀─┘░░░░░░░   ░░░░░░░└─▀██&quot;
        echo&quot;██▄░░░    ░░   ░░    ░░░▄██&quot;
        echo&quot;████▄─┘   ░░░░░░░   └─▄████&quot;
        echo&quot;█████░░  ─┬┬┬┬┬┬┬─  ░░█████&quot;
        echo&quot;████▌░░░ ┬┼┼┼┼┼┼┼  ░░░▐████&quot;
        echo&quot;█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████&quot;
        echo&quot;███████▄░░░░░░░░░░░▄███████&quot;
        echo&quot;██████████▄▄▄▄▄▄▄██████████&quot;
        echo&quot;███████████████████████████&quot;
        echo&quot;LOADING...LOADING...LOADING&quot;
        sleep 0.3
        clear
        echo&quot;███████████████████████████&quot;
        echo&quot;███████▀▀▀░░░░░░░▀▀▀███████&quot;
        echo&quot;████▀░░░░░░░░░░░░░░░░░▀████&quot;
        echo&quot;███│░░░░░░░░░░░░░░░░░░░│███&quot;
        echo&quot;██▌│░░░░░░░░░░░░░░░░░░░│▐██&quot;
        echo&quot;██░└┐░░░░░░░░░░░░░░░░░┌┘░██&quot;
        echo&quot;██░░└┐░░░░░░░░░░░░░░░┌┘░░██&quot;
        echo&quot;██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██&quot;
        echo&quot;██▌░│██████▌░░░▐██████│░▐██&quot;
        echo&quot;███░│▐███▀▀░░▄░░▀▀███▌│░███&quot;
        echo&quot;██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██&quot;
        echo&quot;██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██&quot;
        echo&quot;████▄─┘██▌░░░░░░░▐██└─▄████&quot;
        echo&quot;█████░░▐█─┬┬┬┬┬┬┬─█▌░░█████&quot;
        echo&quot;████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████&quot;
        echo&quot;█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████&quot;
        echo&quot;███████▄░░░░░░░░░░░▄███████&quot;
        echo&quot;██████████▄▄▄▄▄▄▄██████████&quot;
        echo&quot;███████████████████████████&quot;
        echo&quot;.....LOADING.....LOADING...&quot;
        sleep 0.3
        clear
    done
    ini=1
    else
    clear
    echo&quot;_________________________________________&quot;
    echo&quot;PGUTIL - Programa de Utilidad de Postgres&quot;
    echo&quot;_________________________________________&quot;
    echo&quot;             MENU PRINCIPAL              &quot;
    echo&quot;_________________________________________&quot;
    echo&quot;1. Instlar Postgres&quot;
    echo&quot;2. Desintalar Postgres&quot;
    echo&quot;3. Sacar un respaldo&quot;
    echo&quot;4. Restaurar respaldo&quot;
    echo&quot;5. Salir&quot;
    read -n1 -p &quot;Ingrese una opcion [1-5]:    &quot; option

    echo-e&quot;\n\n&quot;

    case $option in
            1)
                echo-e&quot;Instalando&quot;
                sleep 2
                ;;
            2)
                echo&quot;Desintalando&quot;
                sleep 2
                ;;
            3)
                echo&quot;Respaldando&quot;
                sleep 2
                ;;
            4)
                echo&quot;Restaurando&quot;
                sleep 2
                ;;
            5)
                echo&quot;Saliendo&quot;
                exit 0
                ;;
        esac
    fi
done
