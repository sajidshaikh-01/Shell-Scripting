#!/bin/bash


echo "provide an option"
echo "a print for date"
echo "b for list scripts"
echo "c to check current location"


read choice
case $choice in
        a)date;;
        b)ls;;
        c)pwd;;
        *)echo "please provide a valid value"
esac
