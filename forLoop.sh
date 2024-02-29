#!/bin/bash 

#Iterar en una lista de numeros as Array...

myArrray=(3 4 7 4 8 3 0 3 7 6 8)

echo "Iterar en una Array de Numeros "

for num in ${myArrray[*]} 

do 

    echo "Array_i : $num"

done 


