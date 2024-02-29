#!/bin/bash 

#BackScript ....

echo "Operaciones con archivos"
mkdir -m 755 Bckups2

echo -e "\nCopiar los scripts del directorio actual al nuevo"

cp *.txt* Bckups2/
ls -la Bckups2/

echo -e "\n Mover directoriode backupscripts a otra ubicacion: $HOME"
mv Bckups2 $HOME

echo -e "\n Eliminar archivos .txt"
#rm *.txt


