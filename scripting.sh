#!/bin/bash 

: '
name="Johnathan"
echo "${name}"
echo "${name/J/j}"    #=> "john" (substitution)
echo "${name:0:2}"    #=> "Jo" (slicing)
echo "${name::2}"     #=> "Jo" (slicing)
echo "${name::-1}"    #=> "Joh" (slicing)
echo "${name:(-1)}"   #=> "n" (slicing from right)
echo "${name:(-2):1}" #=> "h" (slicing from right)
echo "${food:-Cake}"  #=> $food or "Cake"

length=2
echo "${name:0:length}"  #=> "Jo"

str="/path/to/foo.cpp"
echo "${str%.cpp}"    # /path/to/foo
echo "${str%.cpp}.o"  # /path/to/foo.o
echo "${str%/*}"      # /path/to

echo "${str##*.}"     # cpp (extension)
echo "${str##*/}"     # foo.cpp (basepath)

echo "${str#*/}"      # path/to/foo.cpp
echo "${str##*/}"     # foo.cpp

echo "${str/foo/bar}" # /path/to/bar.cpp
str="Hello world"
echo "${str:6:5}"    # "world"
echo "${str: -5:5}"  # "world"
src="/path/to/foo.cpp"
base=${src##*/}   #=> "foo.cpp" (basepath)
dir=${src%$base}  #=> "/path/to/" (dirpath)

myfunc() {
    local myresult='some value'
    echo "$myresult"
}

myfunc
'
myfunc() {
 
    if [[ -e nestedFORloop.sh ]]; then 
    
    	return 0
    	
    else 
    	
    	return 1 
    	
    fi
  
}  
  
if myfunc; then
  echo "success"
else
  echo "failure"
fi
echo -e "\n"

Fruits=('Apple' 'Banana' 'Orange' 'cherry' 'melon' 'strawberry' 'watermelon' )

Fruits[0]="Apple"
Fruits[1]="Banana"
Fruits[5]="Orange"

echo "${Fruits[0]}"           # Element #0
echo "${Fruits[-1]}"          # Last element
echo "${Fruits[@]}"           # All elements, space-separated
echo "${#Fruits[@]}"          # Number of elements
echo "${#Fruits}"             # String length of the 1st element
echo "${#Fruits[-1]}"          # String length of the Nth element
echo "${Fruits[@]:3:6}"       # Range (from position 3, length 2)
echo "${!Fruits[@]}"          # Keys of all elements, space-separated

for i in "${Fruits[@]}"; do 

   echo "$i"
   
done 

echo -e "*************** \n"

declare -A transports

transports[land]="Car"
transports[rails]="Train"
transports[sea]="Boat"
transports[air]="airPlane"
transports[space]="spaceCraftShip"
transports[city]="autoBus"
transports[desert]="hotAirBallon"
transports[mountain]="cableCar"
transports[building]="liftingMachine"
transports[river]="fastBoat"

echo ${transports[@]}
echo ${!transports[@]}
echo "${#transports[@]}"
echo "${transports[air]}"

echo -e "**************** \n"

for val in ${transports[@]} ; do 

   echo $val
   
done

echo -e "**************** \n"

for key in ${!transports[@]} ; do 

    echo "$key"
    
done

unset transports[desert]
echo "${transports[@]}"
echo "${#transports[@]}"

echo -e "**************** \n"

for n in {1..10} 

do 
    echo $n
	
done

echo -e "**************** \n"

for file in $(ls *.txt)

do 

    echo $file

	
done

echo -e "**************** \n"

for dir in */
do
   echo $dir
done

echo -e "**************** \n"

for i in {1..12}
do
   for j in {1..12}
   do
      echo -e "\t$i * $j = $((i * j)) "
      
      echo -e "\n"
   done
   echo
done
echo -e "**************** \n"

echo -e "**************** \n"

echo -e "**************** \n"

echo -e "**************** \n"


echo -e "**************** \n"

echo -e "..........------------\n" 
