#!/bin/bash
cat dir2/dir22/file1|grep -e "name" -e "hobby"|cut -d "-" -f 2
