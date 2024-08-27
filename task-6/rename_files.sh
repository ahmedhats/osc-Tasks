#!/bin/bash


if [ -e "$1" ] && [ -d "$1" ]; then

    for file in "$1"/*.txt; do
        if [ -e "$file" ]; then
            mv "$file" "$1/old_$(basename "$file")"
        fi
    done

else
    echo "This is not a valid directory!"
    exit 0
fi

