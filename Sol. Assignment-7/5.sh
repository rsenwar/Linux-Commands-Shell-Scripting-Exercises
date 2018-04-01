#!/bin/bash
echo "Enter integer"
read n
c=1
for (( i=1; i<=n; i++ ))
do
c=$(($c*$i))
done
echo "Facorial $c"   
