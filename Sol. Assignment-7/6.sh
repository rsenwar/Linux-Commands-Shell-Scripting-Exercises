#!/bin/bash
ls
echo -e "\n a. Enter name for checking dir./file"
read n1

if [ -f $n1 ]
then
      echo "It is a file"
else
      echo "It is a directory"
fi

echo -e "\nb. Enter two file names"
read n1 n2

n3=$(ls -lt|grep -n -e "$n1"|cut -d ":" -f 1)
n4=$(ls -lt|grep -n -e "$n2"|cut -d ":" -f 1)

if [ $n3 -lt $n4 ]
then
     echo "$n1 is newer"
else
     echo "$n2 is newer"
fi 

echo -e "\nc. Enter filename to check"
read file
if [ -w $file ]
then
     echo "False"
elif [ -x $file ] && [ -r $file ]
then  
   echo "True"
fi



