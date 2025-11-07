#!/bin/bash
read -p " ENTER YOUR MARKS: " marks

if [[ $marks -gt 40 ]]
then
        echo "YOU ARE PASS"
else
        echo "YOU ARE FAIL!!!!!!"
