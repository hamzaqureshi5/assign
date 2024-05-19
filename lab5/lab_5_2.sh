#!/bin/bash

# Function to calculate HRA
calculate_hra() {
    local basic_salary=$1
    local hra

    if [ "$basic_salary" -lt 1500 ]; then
        hra=$(echo "scale=2; $basic_salary * 0.10" | bc)
    else
        hra=$(echo "scale=2; $basic_salary * 0.20" | bc)
    fi

    echo "The House Rent Allowance (HRA) is: $hra"
}

# Read basic salary from the user
read -p "Enter the basic salary: " basic_salary

# Check if the input is a valid number
if ! [[ "$basic_salary" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

# Calculate and display the HRA
calculate_hra "$basic_salary"
