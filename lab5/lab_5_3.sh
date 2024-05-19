#!/bin/bash

# Check if exactly two arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Error: You need to provide exactly two arguments."
    echo "Usage: $0 num1 num2"
    exit 1
fi


# Read the two arguments
num1=$1
num2=$2

# Calculate the sum
sum=$(echo "$num1 + $num2" | bc)

# Print the result
echo "Sum of $num1 and $num2 = $num1 + $num2 = $sum"
