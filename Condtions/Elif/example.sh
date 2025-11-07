#!/bin/bash

read -p "Enter Your Marks:" marks

if [[ $marks -ge 80 ]]
then
        echo "You Are In 1st Division"
elif [[ $marks -ge 60 ]]
then
        echo "You Are In 2nd Division"

elif [[ $marks -ge 40 ]]
then
        echo "You Are In 3rd Division"
else
        echo "You Are Fail"

fi
