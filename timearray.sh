#!/bin/bash 

#contador_?

for ((i=00; i<24; i++))
do
    for ((ii=0; ii<60; ii++))
    do
        contador=$(($contador+1))
        if [ $i -lt 10 ]; then
            hour="0$i"
        else 
            hour=$i
        fi
        if [ $ii -lt 10 ]; then
            min="0$ii"
        else 
            min=$ii
        fi
        hourarray[$contador]="$hour:$min" 
    done
done

echo "Valores Array : ${hourarray[*]}"
echo "Tamaño Array : ${#hourarray[*]}"

   
