#!/bin/bash
#getting values from file.txt


FILE="/root/shell-script/loops/file.txt"

for name in $(cat $FILE)
do
        echo "Name is $name"
done
