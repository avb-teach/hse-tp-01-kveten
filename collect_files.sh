#!/bin/bash

input="$1"
output="$2"
max_depth="$3"

if[[-z "max_depth"]]; then
    find "$input" -type f | while read file; do
        path = $(basename "$file")
        cp "$file" "$output/$path"
    done
else
    find "$input" -maxdepth "$maxdepth" -type f | while read file; do
        path = $(basename "$file")
        cp "$file" "$output/$path"
    done
fi