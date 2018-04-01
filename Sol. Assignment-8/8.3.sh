#!/bin/bash

IFSOLD=$IFS

IFS=$'\n'

if [ -f marklist ]
then
	rm marklist
fi

for lines in `cat student`
do
	IFS=' '
	sum=0
	count=-1
	for words in $lines
	do
		if [ $count -eq -1 ]
		then
			name=$words
			count=$(( $count + 1 ))
		else
			sum=$(( $sum + $words ))
			count=$(( $count + 1 ))
		fi
	done
	avg=`echo "scale=2; $sum / $count " | bc`
	echo "$sum $avg" >> marklist
done
paste student marklist > reportcard

cat reportcard | tr [[:blank:]] ' ' > report
echo "student marks record sorted by total marks in a descending order"
cat report | sort -r -n -k 8 -t ' '
echo
echo "student marks record with average below 50"
IFS=$'\n'
for lines in `cat report`
do
	total=`echo $lines | cut -d ' ' -f 8`
	if [ $total -lt 300 ]
	then
		echo $lines
	fi
done

IFS=$IFSOLD
