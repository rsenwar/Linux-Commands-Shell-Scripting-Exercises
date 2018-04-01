#!/bin/bash
echo "Enter 2 numbers with spaces"
read a b
c=$(($a%$b))
d=$(($b%$a))

if [ $c -eq 0 ] || [ $d -eq 0 ]
then 
     echo "divisible"
else
     echo "not divisible"
fi 
       
