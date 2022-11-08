#!/bin/bash

./reset.sh

echo "
*********************************************
    WELCOME TO [COOL NAME] GAME!

    your one stop shop for fun
*********************************************

Are you ready to play?
    1. Yes
    2. Of course
"

read -p "> " -n 1

while [ "$REPLY" -ne "1" -a "$REPLY" -ne "2" ]
do
    echo ""
    echo "Sorry bud, that's not an option"
    read -p "> " -n 1
done

# do something as a fake game
clear
echo "Thank you for choosing to play!
My name's Game, and I'll be your host

For our first game: Guess the magic number
"
for i in {1..4}
do
    read -p "Whoops, try again: "
done

echo "~: Psst, this is boring isnt it?"
echo "~: I can try and help break you out, otherwise you\'ll be stuck here forever like me"
echo "To meet me outside, type: exit"

sleep 5

clear

echo "Sorry about that, must've been a glitch. Shall we continue?"

while :
do
    read -p "> "

    if [ "$REPLY" = "exit" ]; then
        if [ ! -d TrappedUsers ]; then
            mkdir TrappedUsers
]        fi
        if [ ! -f note ]; then
            touch note

            echo "Glad you can find this, you're already doing better than Sandra ever did." >> note
            echo "Anyway, let's snoop around before Mr. Game knows what's going on" >> note
            echo "To look in different folders, try typing: cd [folder name]" >> note
            echo "If you want to come back out of a folder, type: cd ../" >> note
            echo "Now that you know the cd and ls commands, lets look around for a clue to get out of here" >> note
        fi
        echo "~: Perfect; 'exit' can get you out of any shell script"
        echo "~: I can only help you through text files, so keep a look out for any files with the name: note"
        echo "~: Whenever you need to see what files are avaliable, try typing: ls"
        echo "~: In order to read my notes, try typing: cat [file name]"
        $REPLY
    fi
done




































































































# nothing to see here