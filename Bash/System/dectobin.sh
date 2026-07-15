#!/bin/bash

numA=$1 
num=$numA 
bin=""
while [ $num -gt 0 ]; 
do 
    bin="$bin$((num%2))"; num=$((num/2))
done
echo $numA $(rev <<< $bin)
