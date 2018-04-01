#!/bin/bash

#Write a shell script that accepts a name from the user and creates a directory by that name, then
#creates a text file in that directory and stores the data accepted from user (till the singlecharacter Q
#is given), and displays the number of characters stored in the file.

echo -n "Enter a name to create a directory with: "
read d

mkdir $d
cd $d

echo -n "Enter a name to create a text-file with: "
read f

if [ -f $f ]
then
  rm $f
fi
touch $f

count=0

echo "Enter data for text-file $f"
read -n 1 a
while [ "$a" != "Q" ]
do
  echo -n  -e "$a" >> $f
  count=$(( $count + 1 ))
  read -n 1 a
done

echo

echo -n "Number of characters in $f is: $count"
