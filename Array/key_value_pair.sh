#!/bin/bash

# how to store key values pairs


declare -A saz
saz=( [name]=sajid [age]=22 [city]=paris )
echo "Name is ${saz[name]}"
echo "Age is ${saz[age]}"
echo "city is ${saz[city]}"
