#!/bin/bash


# use this temporarily to eset all the files, folders that are created when playing
# remember to add to this when working on new parts of the story
# always reset before pushing changes 

if [ -d TrappedUsers ]; then 
    rmdir TrappedUsers
fi

if [ -f note ]; then
    rm note
fi