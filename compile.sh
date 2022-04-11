#!/bin/sh

# a file to remember how we like to compile something
# -t compiles with tiles
# -s runs the linter first

c=0; # c = have compiled game 

#check if we need to fix style 
for cmd in "$@"
do 
    if [ $cmd = "-s" ] 
    then 
        echo "Running style-json"
        make style-json
    fi
done

# run make clean first
for cmd in "$@"
do 
    if [ $cmd = "-c" ] 
    then 
        echo "Running clean"
        make clean
    fi
done

for cmd in "$@"
do 
    if [ $cmd = "-t" ] 
    then 
        echo "Tile make"
        echo "make -j18 TILES=1 LOCALIZE=0 SOUND=0 RELEASE=1"
        c=1;
        make -j18 TILES=1 SOUND=0 LOCALIZE=0 RELEASE=1
    fi
done

# if we have not compiled so far then we should with the default compile option
if [ $c -eq 0 ] 
then
    echo "Default compile running"
    echo "make -j18 TILES=0 SOUND=0 RELEASE=1"
    make -j18 TILES=0 SOUND=0 LOCALIZE=0 RELEASE=1
fi 


echo "Compile complete"
