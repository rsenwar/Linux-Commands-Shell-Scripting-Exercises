#!/bin/bash
a=4
b=3
add=$(echo " scale=2; $a + $b; "|bc)
sub=$(echo " scale=2; $a - $b; "|bc)
mul=$(echo " scale=2; $a * $b; "|bc)
div=$(echo " scale=2; $a / $b; "|bc)
echo -e "a = $a and b = $b\na+b = $add\na-b = $sub\na*b = $mul\na/b = $div"
