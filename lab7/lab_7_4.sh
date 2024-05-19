#!/bin/bash

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

# Highlight lines that do not contain the character 'a' and display them in reverse order
grep -v 'a' "$1" | tac
