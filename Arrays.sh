#!/bin/bash

Array1=(1 2 3 4 5 6)
String1=(perro, gato, caballo, canario)
Rank1=({A..Z} {10..20})

#Vista
echo -e "\n------->"
echo -e "Array: ${Array1[*]}"
echo -e "\nString: ${String1[*]}"
echo -e "\nRank: ${Rank1[*]}\n"

#Sizes
echo -e "\n------->"
echo -en "Array: ${#Array1[*]}"
echo -en "\nString: ${#String1[*]}"
echo -en "\nRank: ${#Rank1[*]}\n"

#Positions
echo -e "\n------->"
echo -en "Vista en position [3]:"
echo -en "\nArray: ${Array1[3]}\nString: ${String1[3]}\nRank: ${Rank1[3]}\n"

#Set Value:
echo -e "\n------->"
Array1[7]=20;
unset Array1[0]
echo -en "Se elimina la posicion [0] en Array: ${Array1[*]}"
echo -en "\nNuevo Array: ${Array1[*]}"
echo -en "\nNueva longitud del Array : ${#Array1[*]}\n\n"

function iterarListaNumeros   {
  arregloNumeros=(1 2 3 4 5 6)
  echo "Iterar en la Lista de Números"
  for num in ${arregloNumeros[*]}
  do
      echo "Número: $num"
  done
}

function iterarCadena {

  echo "Iterar en la lista de Cadenas"
  for nom in "Marco" "Pedro" "Luis" "Daniela"
  do
    echo "Nombre : $nom"
  done
}

function iterarArchivos {
  echo "Iterar en Archivos"
  for fil in *.txt
  do
      echo "Nombre archivo: $fil"
  done
}

function iterarComando {
  echo "Iterar utilizando un comando"
  for fil in $(ls)
  do
      echo "Nombre archivo: $fil"
  done
}

function iteracionTradicional {
  echo "Iterar utilizando el formato tradcional"

  for ((i=1; i<10; i++))
  do
      echo "Número: $i"
  done
}

option=0

echo -e "\n elija una opcion
  1 iterar lista de numeros 
  2 iterar lista de cadenas
  3 iterar en Archivos
  4 iterar utilizando comando
  5 iteracion tradicional"

read -n1 option
echo -e "\n"

case $option in
  1) iterarListaNumeros ;;
  2) iterarCadena ;;
  3) iterarArchivos ;;
  4) iterarComando ;;
  5) iteracionTradicional;;
  *) echo "opcion desconocida";;
  
  
esac

