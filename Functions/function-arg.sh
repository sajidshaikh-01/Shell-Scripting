#!/bin/bash

add_numbers() {
    sum=$(( $1 + $2 ))
    echo "Sum of $1 and $2 is: $sum"
}

add_numbers 10 20
