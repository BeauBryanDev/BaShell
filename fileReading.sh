#!/bin/bash 

echo "Leer en un Archivos"
cat $1
echo -e "\nAlmacenar valores en un avariable"
valorCat=`cat $1`
echo "$valorCat"

#se usa variable especial IFS (internal field separator) evitar recortes de espacios en blanco
echo -e "\nLeer archivos linea por linea utilizando while "

while IFS= read linea

do
        echo "$linea"
        
done < $1

