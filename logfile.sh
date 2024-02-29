#!/bin/bash 

echo "Generating log file..."
touch log.txt
sleep 2

echo "Registering login..."
user=$USER
date=$(date +%Y_%m_%d__%H:%M:%S)
sleep  2


echo "$user/$date" >> log.txt
sleep 2 

echo -e "Login Registered\n"
cat log.txt


#--------------------------

restaurar_respaldo () {
read -p &quot;Ingresar el directorio donde se encuentran los respaldos   &quot; directorioBackup
if [ -d $directorioBackup ]; then

echo &quot;Listando los archivos de Respaldos...&quot;
sleep 3
ls -la $directorioBackup
read -p &quot;Ingresar el archivo .bak a restaurar:  &quot; respaldoRestaurar
#echo -e &quot;\n&quot;
if [ -f &quot;$directorioBackup/$respaldoRestaurar&quot; ]; then

        read -p &quot;Ingresar nombre BD destino:  &quot; bdDestino
        verifyBdd= $(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $bdDestino)
        if [ $? -eq 0 ]; then
                  echo &quot;Restaurando en la Base de Datos destino...$bdDestino&quot;
                  sudo -u postgres pg_restore -Fc -d $bdDestino &quot;$directorioBackup/$respaldoRestaurar&quot;
                  echo &quot;Listar Bases de datos...&quot;
                  sudo -u postgres psql -c &quot;\l&quot;
           else
                  echo  &quot;La BD destino no se encuentra...&quot;
                  echo  &quot;Creando Base de Datos destino...&quot;
                  sleep 4
                  sudo -u postgres psql -c &quot;CREATE DATABASE $bdDestino&quot;
                  sudo -u postgres pg_restore -Fc -d $bdDestino &quot;$directorioBackup/$respaldoRestaurar&quot;
                  echo &quot;Listar Bases de datos...&quot;
                  sudo -u postgres psql -c &quot;\l&quot;
          fi

else
        echo &quot;No se encuentra el archivo de Respaldo Ingresado&quot;
        echo &quot;Verifique nuevamente el nombre y vuelva a intentarlo...&quot;
fi
else
        echo &quot;No se encuentra el directorio de Respaldos ingresado...&quot;
        echo &quot;Verifique nuevamente el nombre y vuelva a intentarlo...&quot;
fi

read -n 1 -s -r -p &quot;Presione [ENTER] para continuar...&quot;

}

