#!/bin/bash 
#option menu.

option=0
currentDate=`date +%Y%m%d`

#Intalling Postgress Function...

getPostgres ()  { 

    echo "\nCheck for Postgress on Records."
    checkup=$(which ppsql)
    if [ $? -eq 0 ] ; then 
        echo -e "\nPostgres is already on this Local Machine\n"
    else 

        read -s -p "Type Sudo Password : " PASSWORD
        read -s -p "\nSet up a Password for Postgres : " pstgPASSWORD
        echo "$PASSWORD" | sudo -S apt update
        echo "$PASSWORD" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$pstgPASSWORD}';"
        echo "$PASSWORD" | sudo -S systemctl enable postgresql.service
        echo "$PASSWORD" | sudo -S systemctl start postgresql.service 

    fi 

    read -p '\nPRESS [ENTER] to continue ...'
    
}

removePostgres () {

    read -s -p "Enter your SUDO Password : " PASSWORD
    echo -e "\n"
    echo "$PASSWORD" | sudo -S systemctl stop postgresql.service 
    echo "$PASSWORD" | sudo -S pq_dropcluster --stop 14 main
    echo "$PASSWORD" | sudo -S apt-get -Y --purge remove postgresql\*
    echo "$PASSWORD" | sudo -S userdel -r postgres
    echo "$PASSWORD" | sudo -S groupdel postgresql
    
    read -p $'\nPRESS [ENTER] TO CONTINUE ..'


}

backUpFunction () { 

    echo "Make the Data Bases to Back_UP"
    sudo -u postgres pswl -c "\l"
    read -p "Chose the Data Base to Back up  :" DB_to_bckup
    echo -e "\n"
    if [ -d "$1" ] ; then 
         
        echo "Set Directory Permise as Autth!"
        echo "$PASSWORD" | sudo -S chmod u+x $1
        echo "Making Back up ....."
        sudo -u postgres pg_dump -Fc $BD_to_bckup > "$1/DB_to_bckup$currentDate.bak"
        echo "Bsck_up was properly Done over this Location : $1/DB_to_bckup$currentDate.bak"

    else 

        echo -e "\nThe $1 does not Exist!"
        echo -e "\n"
        read -n1 -p "Would You like to create a New Directory to Backup $1 (y/n) :" bck

        if [ bck = "y" ]; then 

            sudo mkdir $1
            
            echo "$PASSWORD" | sudo -S chmod u+x $1

            echo -e "\n BACKUP, PLEASE WAIT._......."

            sleep 3

            sudo -u postgres pg_dump -Fc $DB_to_bckup > "$1/DB_to_bckup$currentDate.bak"
            echo "Backup was properly Done over this Location : $1/DB_to_bckup$currentDate.bak"

        else

            echo -e "\nLeaving Out without Backup...."

            sleep 3 

        fi

    fi


 read -p "Press [ENTER] to Continue ..."

} 

restorBackUp () {   

    echo "Restore Backups"
    read -p "Enter the Directory where Backup is :" dirc
    if [ -d $dirc ]; then 
        echo " Let the files to restore..."
        sleep 3

    ls -la $dirc
    #read -p "Chose the back up to retrieve :" bck2bck
    echo -e "\n"
    read -p "Enter the Name of the .bak file to retrieve back_:" toback
    echo -e " \n"
    #check if this DB does Exist.
    if [ -f "$dirc/$toDB" ]; then 

        read -p "Enter the Name of DB to save : "targetDB

        checkDB=$( sudo -u postgres psql - lgt | cut -d \| -f 1 | grep -wq targetDB)

        if [ $? -eq 0 ] ; then 

            echo "Retrieving the Target >DataBase ...."
           
           sudo -u postgres pg_restore -Fc -d $targetDB "$dirc/$toBack"

           echo " Set Data Base ..."

           sudo -u postgres psql -c "\l"
        
        else 

        echo "Target Data Base does not Exist ...."

        sleep 2

        echo "Creating Data Base for You...."
        
        sleep 3

        sudo -u postgres psql -c "CREATE DATABASE $targetDB"

        sudo -u postgres pg_restore -Fc -d $targetDB "$dirc/$toBack"

        echo "Set Data Base ....."
        
        sudo -u postgres psql -c "\l"

    fi

else 

    echo "File cannot be found!\n"
    echo "Double Check the nale of the file, then Try it again\n"
fi

else 

    echo "Input Directory to retireve is not foud..."
    echo "Check its Name and Try it again .........."

fi

read -p "\nPRESS [ENTER] TO CONTINUE ......"

sleep 3 

}

Data_Base_List ()  {  
    
    echo -e "Current Data Base on Records"
    sudo -u posrgres psql -c "\l"
    
    echo -e "\nPRESS [ENTER] TO CONTINUE......"


} 

        clear
        echo"███████████████████████████"
        echo"███████▀▀▀░░░░░░░▀▀▀███████"
        echo"████▀░░░░░░░░░░░░░░░░░▀████"
        echo"███│░░░░░░░░░░░░░░░░░░░│███"
        echo"██▌│░░░░░░░░░░░░░░░░░░░│▐██"
        echo"██░└┐░░░░░░░░░░░░░░░░░┌┘░██"
        echo"██░░└┐░░░░░░░░░░░░░░░┌┘░░██"
        echo"██░░┌┘     ░░░░░     └┐░░██"
        echo"██▌░│       ░░░       │░▐██"
        echo"███░│      ░░ ░░      │░███"
        echo"██▀─┘░░░░░░░   ░░░░░░░└─▀██"
        echo"██▄░░░    ░░   ░░    ░░░▄██"
        echo"████▄─┘   ░░░░░░░   └─▄████"
        echo"█████░░  ─┬┬┬┬┬┬┬─  ░░█████"
        echo"████▌░░░ ┬┼┼┼┼┼┼┼  ░░░▐████"
        echo"█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████"
        echo"███████▄░░░░░░░░░░░▄███████"
        echo"██████████▄▄▄▄▄▄▄██████████"
        echo"███████████████████████████"
        echo"LOADING...LOADING...LOADING"
        sleep 0.3

while  :

do 

    #clear 

    echo -e "\n"

    echo "*******************************"
    echo "==============================="
    echo "PGUTIL - Postgres_Utilities>>>>"
    echo "==============================="
    echo "         Main Menu             "
    echo "==============================="
    echo "*******************************"

    echo "1. Install Postgres "
    echo "2. UnIstall Postgres"
    echo "3, Make a BackUp"
    echo "4. Restore BackUp"
    echo "5. Exit the Program"

    #Read whatever is the User Option ...

    read -n2 -p "Enter a valid Option [1-5] : " option

    #vValidate the INF input by User. ...
echo -e "\n"

    case $option in 
        
        1)
            getPostgres
            
            echo -e "\nYou Chose to Install Postgres"
            sleep 2
            ;;
        2) 
            removePostgres 

            echo -e "\nYou Chose to Unistall Postgres"
            sleep 2
            ;;
        3)
            read -p "ENter the name of Back up Folder : " BckUpF
            bckUpFunction $BackUpF

            echo -e "\nYou Chose to Make a Backup"
            sleep 2
            ;;
        4) 
            read -p "E<nter the Restoring Folder you want to save : "rstF
            restorBackUp $rstF
            echo -e "\nYou Chose to Restore Backup"
            sleep 2
            ;;
        5) 
            echo -e "\nYou Chose to Leave as Exit "
            exit 0 
            ;;
        *)  
            echo -e "\nInValid Option , Try Again"
            sleep 1
            ;;

    esac

done








