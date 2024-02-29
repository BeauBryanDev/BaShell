#//bin/bash 

#Enter <Options> && <Parameters> 

echo "Options to Programs"
echo "First Option Sent: $1 "
echo "second Option sent : $2"
echo "Options sent : $* "
echo -e "\n"
echo "Retrieve Values "

while [ -n "$1" ] 

do 

case "$1" in 
-a) echo " -a usedOption ";;
-b) echo " -b used Option ";;
-c) echo " -c used Option ";;
*) echo "$!  is not a valid Option";;

esac 
shift 
done 

