#!/bin/bash
# Este script es una implementación del la shell function range

inicioExc=0
paso=1
random=false
if [ $# -eq 0 ]
    then
    finExc=10
    else
	if [ $# -eq 1 ]
	    then 
	    finExc=$1
	    else	
		if [ $# -le 4 ]
		    then
		    inicioExc=$1
		    finExc=$2
		    if [ $# -eq 3 ]
			then
			paso=$3
			else 
			    paso=1
		    fi
		    if [ $# -eq 4 ]
			then
			random=$4
			else
			    random=false
		    fi
		    else 
			echo "error"
		fi
	fi
fi
#echo "hola si funcione"


for ((i=$inicioExc;i<$finExc;i=$(($i+$paso))))
do
    if $random
	then
	echo -n "$(randomizer $inicioExc $finExc) "
	else
	    echo -n "$i "
    fi
done
