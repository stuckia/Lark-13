#!/bin/bash
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
    echo "Sorry bud, that\'s not an option"
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
        $REPLY
    fi
done


# have someone trapped in the game talk to you
# teach exit to leave the current file 
# teach ls to list stuff

# continue to snoop around files and eventually break out
