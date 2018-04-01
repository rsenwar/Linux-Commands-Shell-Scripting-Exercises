#!/bin/bash
echo "Enter three Integers with spaces"
read a b c
echo -e " $a\n $b\n $c"|cat >sorting
sort -n sorting
rm sorting
