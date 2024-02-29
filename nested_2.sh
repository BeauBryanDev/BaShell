#!/bin/bash 

#using for _Loops X2

echo "Nested for Loops"

for file in $(ls) 

do 
    for name in {1..5}

    do
        
        echo " File Name: $file _ $name"

    done

done 


