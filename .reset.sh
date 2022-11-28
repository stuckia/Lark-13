#!/bin/bash


# finally, put this in main instaed
#make sure to unset cd in reset file

# use this temporarily to eset all the files, folders that are created when playing
# remember to add to this when working on new parts of the story
# always reset before pushing changes 
#unset cd

for i in {2..6}
do
    unset "FINISHED$i"
done

if [ -d TrappedUsers ]; then 
    mv TrappedUsers .TrappedUsers
fi

for i in .TrappedUsers/*.player 
do
    if [ $i = ".TrappedUsers/Bob.player" -o $i = ".TrappedUsers/Sandra.player" -o $i = ".TrappedUsers/Carl.player" -o $i = ".TrappedUsers/Kristie.player" ]; then
        continue
    else 
        rm $i
    fi
done


for i in {2..6}
do
    if [ -d "level$i" ]; then 
        mv "level$i" ".level$i"
    fi
done

if [ -f .level6/note ]; then 
    echo "I'm glad you could find my next note" > .level6/note
    echo "I've been snooping around too and the file 'rules' seems unusually cluttered" >> .level6/note
    echo "Maybe we can figure out a way to filter the text and look for some kind of password or key" >> .level6/note
    echo >> .level6/note
    echo "Dont forget: you can run any .sh file by typing: . [filename]" >> .level6/note
fi

if [ -f note ]; then
    rm note
fi

if [ -f .level2/note ]; then 
    rm .level2/note
fi

if [ -f .level2/tunnel ]; then
    rm .level2/tunnel
fi

if [ -f .level4/key ]; then 
    rm .level4/key
fi

if [ -f key ]; then
    rm key
fi

if [ -f .level4/lock ]; then 
    rm .level4/lock
fi

if [ -f .level4/riddle ]; then 
    rm .level4/riddle
fi

if [ -f finale.sh ]; then
    mv finale.sh .finale.sh
fi