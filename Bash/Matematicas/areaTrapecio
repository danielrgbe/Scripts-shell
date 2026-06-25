#!/bin/bash
# This script calculates the area of a trapezius, it can recive three arguments
# base menor, base mayor, altura
usage() {
    cat << EOF
Usage: $0 [-b -B -h] 
-b side b integer
-B side B integer
-h height integer
Usage: $0 [-i] 
runs the interactive mode
EOF
    exit 1
}

calculateArea() {
    area=$((($baseMenor+$baseMayor)*$altura))

    if [ $(($area % 2)) -eq 0 ]
	then
	decimal=".0"
	else
	    decimal=".5"
	fi

    area=$(($area/2))
    echo $area$decimal
    return 0
}
runInteractiveMode() {
    read -p "Introduce b >> " baseMenor
    read -p "Introduce B >> " baseMayor
    read -p "Introduce h >> " altura
    return 0
}

case "$#" in
    1) # This enables the interactive mode
	runInteractiveMode
	calculateArea
    ;;
    3) # The sides and height are given 
	baseMenor=$1
	baseMayor=$2
	altura=$3
	calculateArea
    ;;

    *) # Shows the usage of the script
	usage
    ;;
esac 
exit 0
