#!/bin/bash
fibonaci(){
a=0
b=1
for ((i=0;i<$1;i++))
    do 
      temp=$b
      b=$(($a+$temp))
      a=$temp
    done  
echo "nth fibonaci term is $a"
}
