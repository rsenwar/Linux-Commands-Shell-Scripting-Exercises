#!/bin/bash
echo -n "Number of directories on Desktop:"
find ~/Desktop -mindepth 1 -maxdepth 1 -type d|wc -l
echo
ls ~/Desktop|sort
ls ~/Desktop|sort|cat >sorting
echo
echo "Output redirected to file sorting"


