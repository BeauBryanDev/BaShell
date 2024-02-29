#!/bin/bash 

#using for _Loops X2
#Break && Continue 

echo "Nested for Loops"

for file in $(ls) 

do 
    for name in {1..5}

    do 
        if [ $file = "os.sh" ]; then 

            break;

        elif [[ $file == u* ]] ; then 

            continue
        
        else 
        
            echo " File Name: $file _ $name"

        fi

    done

done 


