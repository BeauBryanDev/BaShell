#!/bin/bash 

#getting INF from User .

option=""
backupName=""
password=""

echo "Utility Program"
read -p  "Insert an Option: " option 
read -p  "Enter Name of Backup file: " backupName
echo -e "\n"
read -s -p "Input a Password : " password
echo -e  "\n"
echo "\nOption: $option, backup Name : $backupName"
echo "Your Password is :$password <"

regExp_Num = '^[0-9]{10}$'
countryRE    = '[A-Z]{3}$'
dateRegExp = '^(19|20)[0-9]{2}(0[1-9]|1[0-2]|[12][0-9]|3[01]$'

echo "<Regular Express \n"

read -p "Enter your ID :" id
read -p "Enter your Country Code : " country
read -p "Enter your Date of Birth :"  DOB

flag=1

if [[ $id =~ $regExp_Num ]] ; then 

    echo "Valid ID $id is OK"

else 
    
    echo "Bad Input $id --> invalid ID "
    flag = 0

fi 

if [[ $country =~ $countryRE ]] ; then 

    echo "$country a valid Country "

else 

    echo "Error, $country is not a valid Country!"
    flag = 0

fi 

if [[ $DOB  =~ $dateRegExp ]] ; then 

    echo " Valid Date of Birth as $DOB"

else 

    echo "invalid Date of Birth as $BOB "
    flag = 0

fi 

if [[ $flag == 1 ]] ; then 

    echo " Great, Your Information is saved with us!"

else 

    echo "Something went wrong!,  Please Try Again "

fi




