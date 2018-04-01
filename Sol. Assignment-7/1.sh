#!/bin/bash
echo "Enter 3 Numbers with spaces";
read a b c;
d=$a
if [ $b -gt $a ]
then
     d=$b
fi

if [ $c -gt $d ]
then
     d=$c
fi


echo "Maximum is $d";
     
