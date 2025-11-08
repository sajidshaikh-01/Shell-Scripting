#!/bin/bash

FREE_SPACE=$( free -mt | grep "Total" | awk '{print $4}')
TH=500

if [[ $FREE_SPACE -lt $TH ]]
then
        echo "WARNING RAM IS INSUFFICIENT"
else
        echo "RAM IS SUFFICIENT - $FREE_SPACE M"
fi



#this is a simple example for practice 
