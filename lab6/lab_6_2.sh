#!/bin/bash

# Function to generate Fibonacci series
generate_fibonacci() {
  local limit=$1
  local a=0
  local b=1

  echo -n "$a $b"

  for (( i=2; i<limit; i++ ))
  do
    local next=$((a + b))
    echo -n " $next"
    a=$b
    b=$next
  done
  echo
}

# Main script
read -p "Enter the no: " num
read -p "Enter the limit: " limit

if [ $limit -lt 2 ]; then
  echo "Limit should be at least 2 to generate a meaningful Fibonacci series."
  exit 1
fi

echo "Sample Output:"
generate_fibonacci $limit