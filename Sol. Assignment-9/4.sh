#!/bin/bash
. ./1.sh
. ./2.sh
. ./3.sh
echo "Select Function to be used"
echo -e "1.Sum\n2.Difference\n3.Product\n4.Division\n5.Exponent\n6.nth fibonaci\n7.Average"
read ch
case $ch in 
   "1") echo "Enter two numbers"
          read a b
          sum $a $b;;
       
   "2") echo "Enter two numbers"
         read a b
        difference $a $b;;
   
   "3") echo "Enter two numbers"
         read a b
         product $a $b;;

   "4") echo "Enter two numbers"
         read a b
         divide $a $b;;

   "5") echo "Enter two numbers"
         read a b
         power $a $b;;

   "6") echo "Enter number"
         read a
         fibonaci $a;;

   "7") echo "Enter numbers to calculate average"
        read a
        average `echo $a`;;
           
   *) echo "Wrong Choice";;
esac 
