#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <string>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: $1 is not a directory"
    exit 1
fi

X=$(find "$1" -type f | wc -l)
Y=$(grep -r "$2" $1 | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"