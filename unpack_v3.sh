#!/bin/bash

for file in "$1"/*.wav; do
    audio-to-midi "$file" -b 120 -t 30 2> /dev/null
done
mkdir "$2"
mv *.mid "$2"
zip -q "$2".zip "$2"/*