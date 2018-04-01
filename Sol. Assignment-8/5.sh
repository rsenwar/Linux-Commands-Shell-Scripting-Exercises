#!/bin/bash
echo "Fibonacci series up to N terms"
echo -n "Enter value of N: "
read n
a=0
b=1
for ((i=0;i<$n;i++))
    do 
     echo -n "$a "
     temp=$b
      b=$(($a+$temp))
     a=$temp
    done  
