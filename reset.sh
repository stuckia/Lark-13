#!/bin/bash


# use this temporarily to eset all the files, folders that are created when playing
# remember to add to this when working on new parts of the story
# always reset before pushing changes 

if [ -d TrappedUsers ]; then 
    mv TrappedUsers .TrappedUsers
fi

if [ -f note ]; then
    rm note
fi

for i in {2..7}
do
    if [ -d "level$i" ]; then 
        mv "level$i" ".level$i"
    fi
done

if [ -f "TrappedUsers/$UNAME.player" ]; then
    rm "TrappedUsers/$UNAME.player"
fi

if [ ! -f .level6/note ]; then 
    touch .level6/note
    echo "I'm glad you could find my next note" >> .level6/note
    echo "I've been snooping around too and the file 'rules' seems unusually cluttered" >> .level6/note
    echo "Maybe we can figure out a way to filter the text and look for some kind of password or key" >> .level6/note
    echo >> .level6/note
    echo "Dont forget: you can run any .sh file by typing ./[filename]" >> .level6/note
fi

if [ -f .level2/note ]; then 
    rm .level2/note
fi