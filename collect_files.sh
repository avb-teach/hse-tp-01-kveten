#!/bin/bash

input="$1"
output="$2"

find "$input" -type f | while read file; do
    name = $(basename "$file")
    cp "$file" "$output/$name"
done