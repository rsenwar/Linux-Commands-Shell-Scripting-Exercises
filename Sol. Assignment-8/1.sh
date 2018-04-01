#!/bin/bash
echo "Enter the file name"
read a

if [ -e $a ]
then
      echo -n "Last Modification time: "
      ls -l $a|cut -d " " -f 6,7,8
else
      echo "File doesn't exist"
fi
