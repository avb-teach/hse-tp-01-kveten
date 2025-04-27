#!/bin/bash

if["$1" = "--max_depth"]; then
    max_depth="$2"
    input="$3"
    output="$4"
else
    input="$1"
    output="$2"
fi

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