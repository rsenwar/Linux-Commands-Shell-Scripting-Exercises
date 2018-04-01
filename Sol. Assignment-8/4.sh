#!/bin/bash
cat file
echo
for word in `cat file`
	do
      c=$(echo $word|wc -c)
	echo "$word : $(($c-1))"
done
