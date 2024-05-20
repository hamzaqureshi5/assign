#!/bin/bash

# Function for addition
addition() {
    echo "Result: $(($1 + $2))"
}

# Function for subtraction
subtraction() {
    echo "Result: $(($1 - $2))"
}

# Function for multiplication
multiplication() {
    echo "Result: $(($1 * $2))"
}

# Function for division
division() {
    if [ $2 -ne 0 ]; then
        echo "Result: $(($1 / $2))"
    else
        echo "Error: Division by zero is not allowed."
    fi
}

# Main script
echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Choose an operation (+ - x /):"
read operator

case $operator in
    +)
        addition $num1 $num2
        ;;
    -)
        subtraction $num1 $num2
        ;;
    x)
        multiplication $num1 $num2
        ;;
    /)
        division $num1 $num2
        ;;
    *)
        echo "Invalid operator. Please use one of the following: + - x /"
        ;;
esac
