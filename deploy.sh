#!/bin/bash

for file in  _build/html/*
do
    new="$(basename $file)"
    rm -rf "$new"
    cp -R "$file" .
    git add "$new"
done
git commit -m "$(date +%Y.%m.%d.%H:%M:%S)"

