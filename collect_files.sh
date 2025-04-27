#!/bin/bash


input=$1
output=$2
if if["$3" = "--max_depth"]; then
    max_depth=$4
fi

if[ -z "$max_depth"]; then
    find "$input" -type f | while read file; do
        name = $(basename "$file")
        cp "$file" "$output/$name"
    done
else
    find "$input" -maxdepth "$max_depth" -type f | while read file; do
        name = $(basename "$file")
        cp "$file" "$output/$name"
    done
fi