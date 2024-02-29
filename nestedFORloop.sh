#!/bin/bash

#nested For Loops....

for file in $(ls *.sh) 

do 

    echo "-----$file------"

    while read -r line; do 

        echo "$line"

    done < "$file"

done 


