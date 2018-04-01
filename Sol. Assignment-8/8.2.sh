#!/bin/bash

echo "Enter two directories' names"
read d1 d2

for f2 in `ls $d2`
do
	for f1 in `ls $d1`
	do
		echo "matching $f2 in $d2 with $f1 in $d1"
		a=`diff $f1 $f2`
		if [ -z "$a" ]
		then
			rm $d2/$f2 
			break
		fi
	done
done


