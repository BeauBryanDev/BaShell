#!/bin/bash 
#get the User Information , please. 

regexName='^([A-Z]{2})$'
regexLastName='^([A-Z]{2,})$'
regexAge='^[1-9]{1,2}$'
regexCallphone='^[0-9]{10}$'
regexAddress='^[A-Z]{1}[A-Z]+\s([A-Z]{2}\s)([0-9]*)$'

read -p "Enter your Name, Please \n" Name
read -p "Enter your last Name as Well\n" LastName 
read -p "Enter your Age : \n " age 
read -p "Enter your Phone Number :\n" Cell_Number 
read -p "Enter your Mailing Address \n" Address

#~FUNCTION~

function Invalid_Syntax { 

    echo "Invalid Syntax !"
    echo "Please Try again and Check your Spelling"
    echo -e "\n"

}

if [[ $Name =~ $regexName ]] ; then 

    echo "Name is OK"

else 

    Invalid_Syntax

fi 

if [[ $age =~ $regexAge ]] ; then 

    echo "Age is valid " 

else 

    Invalid_Syntax

fi 



