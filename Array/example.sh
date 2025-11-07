#!/bin/bash

#Array
myarray=( sajid shaikh 1 3.5 )
echo "2nd index value is ${myarray[1]}"
echo "all index value is ${myarray[*]}"


#how to get length of an array
echo "length of an array is ${#myarray[*]}"



# how to get specific values
echo "index 2:2 array is ${myarray[*]:2:2}"


#updating array with new values

myarray+=( New 30 40 )
echo "all index value is ${myarray[*]}"
