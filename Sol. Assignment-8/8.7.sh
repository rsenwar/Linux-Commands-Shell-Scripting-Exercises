#!/bin/bash

#Write a shell script to count the occurences of a character in a specified file. Character and file
#are to be accepted as arguments. Extend the script to compute the word frequency analysis of a
#particular input file.


if [ $# -ne 2 ]
then
  echo "Usage: script filename character"
  
else

  count=0
  cat $1 | ( while read -n 1 ch
  do
    if [ "$ch" = $2 ]
    then
      count=$(( $count + 1 ))
    fi
  done

  echo "The $2 character in $1 file occur $count times" )

  echo
  echo

  ls
  echo "Word Frequency Analysis"
  echo -n "Enter input filename: "
  read a

  if [ -f wordfile ]
  then
    rm wordfile
  fi


  for words in `cat $a`
  do
    echo "$words" >> wordfile
  done

  sort wordfile | uniq > wordlist



  for words in `cat wordlist`
  do
    count=0
    for w in `cat $a`
    do
      if [ $words = $w ]
      then
         count=$(( $count + 1 ))
       fi
     done
     echo "$words $count"
   done

  
fi
