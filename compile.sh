#!/bin/bash

# a file to remember how we like to compile something
# -t compiles with tiles

#check if we need to fix style 
i=1; 
for cmd in "$@"
do 
    echo "hello"
    if [[ $i == "-s" ]]; then 
        echo "hello"
        make style-json
    fi
    i=$((i + 1));
done

# must have space before a backet apparently
if [[ $1 == *"-t"* ]]; then 
    make -j18 TILES=1 SOUND=0 RELEASE=1
else 
    make -j18 TILES=0 SOUND=0 RELEASE=1
fi  
