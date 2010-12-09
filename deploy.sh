#!/bin/bash

for file in  _build/html/*
do
    rm -rf $(basename $file)
    mv "$file" .
    git add "$file"
done
git commit -m "$(date +%Y.%m.%d.%H:%M:%S)"

