#!/bin/bash

# List the word counts of the files in the present working directory
echo "Word counts of the files in the present working directory:"
wc -w *

# Check if a filename is provided as an argument
if [ -z "$1" ]; then
    echo "Please provide a filename as an argument."
    exit 1
fi

# Check if the provided file exists
if [ ! -f "$1" ]; then
    echo "The file '$1' does not exist."
    exit 1
fi

# Use the pipe command to sort the content of the file and then count the words
echo "Word count of the sorted content of the file '$1':"
sort "$1" | wc -w
