#!/bin/bash
read str1 str2
l1=$(echo $str1 |wc -c)
l2=$(echo $str2 |wc -c)

if [ $l1 -gt $l2 ]
then
     echo $str1
else
     echo $str2
fi

