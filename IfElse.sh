#!/bin/bash 
#check if You can vote or Not?...

min_age=18

echo "Enter your Name. Please"
read name 
read -n3 -p "Enter your age : " age
echo -e "\n"

if [[ $age -lt $min_age ]] ; then 

    echo "$name, You can not vote neither drink alcohol, Sorry"

else 

    echo "$name, You can vote and drink alcohol, Cheers!"

fi

echo -e "\n"
echo "Good Bye"
echo -e "\n"
