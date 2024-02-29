#!/bin/bash 

#Testing Program 

option=5 
name1=Bryan 

echo "Option $option and Name: $name1"

#Export name1 variable to be available in other bash process as well. 

export name1 

./newVars.sh 




