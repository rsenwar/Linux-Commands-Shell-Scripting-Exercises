#!/bin/bash
average(){
sum=0
for b in `echo $@`
do
     sum=$(( $sum + $b ))
done
echo -n "Average: "
echo "scale=3;$sum / $#"|bc
}
