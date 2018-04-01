#!/bin/bash
sum(){
echo "Sum: " $(($1 + $2))
}
difference(){
echo "Difference: " $(($1-$2))
}
product(){
echo "Product: " $(($1*$2))
}
divide(){
echo "scale=2;$(($1/$2))"
}
power(){
echo "$1 power $2 is equal to $(($1**$2))"
}
