#!/bin/bash
#logical operator &&

read -p "whats your age:" age
read -p "your country:" country

if [[ $age -ge 18 ]] && [[ $country = india ]]
then
        echo "You Can Vote"
else
        echo "You Can't Vote"
fi:wq
