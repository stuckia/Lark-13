#!/bin/bash

# consider this to make sure user cannot cd out of game
# game will only ever be one folder deep, so cd .. will bring them back to main game
# also add a check if they do cd in the main game to not do anything
cd() { 
    if [ $# -eq 0 -o "$1" = ".." ]; then 
        if [ $(basename `pwd`) = "Lark-13" ]; then
            return
        fi
    fi

    if [ $# -eq 0 ]; then
        cd ..
    else
        pushd $1 1>/dev/null 
    fi
}

exit() {
    echo "Great try, but you cant exit out of the game that easily"
}

initFiles() {
    
    if [ ! -f note ]; then
        touch note

        echo -e "\e[91m~: Glad you can find this, you're already doing better than Sandra ever did." >> note
        echo -e "\e[91m~: Anyway, let's snoop around before Mr. Game knows what's going on" >> note
        echo -e "\e[91m~: To look in different folders, try typing: cd [folder name]" >> note
        echo -e "\e[91m~: If you want to come back out of a folder, type: cd .." >> note
        echo -e "\e[91m~: Now that you know the cd and ls commands, lets look around for a clue to get out of here" >> note
    fi

    for i in {2..7}
        do
            if [ -d ".level$i" ]; then
                mv ".level$i" "level$i"
            fi
        done

    if [ ! -f ".TrappedUsers/$UNAME.player" ]; then
        touch ".TrappedUsers/$UNAME.player"
    fi
}

game() {
    read -p "Pick a number: "
    for i in {1..4}
    do
        read -p "Whoops, try again: "
    done
}

./reset.sh

# make part of the puzzle be that the user needs to find their own file and delete it
# user must also change file of helper guy
# that will teach rm or maybe mv to rename file
# keep TrappedSecrets locked until they learn chmod
# maybe have a script somewhere in .secrets so user has to cp script to another locaition
# that other location could be a level up in the directory so the user has to do ../

echo "Before anything, I'd like to know your name:"
read -p "> "
export UNAME=$REPLY

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

while [ $REPLY -ne 1 -a $REPLY -ne 2 ]
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

game

echo -e "\e[91m~: Psst, this is boring isnt it?"
echo -e "\e[91m~: I can try and help break you out, otherwise you'll be stuck here forever like me"
echo -e "\e[91m~: To meet me outside, type: exit"

sleep 1

echo
echo
echo -e "\e[39mSorry about that, must've been a glitch. Shall we continue?"

while :
do
    read -p "> "

    if [ "$REPLY" = "exit" ]; then
        initFiles
        echo -e "\e[91m~: Perfect; 'exit' can get you out of any shell script"
        echo -e "\e[91m~: I can only help you through text files, so keep a look out for any files with the name: note"
        echo -e "\e[91m~: Whenever you need to see what files are avaliable, try typing: ls"
        echo -e "\e[91m~: In order to read my notes, try typing: cat [file name]"
        break
    else 
        game
        echo -e "\e[91m~: I cant believe you're still playing"
        echo -e "\e[91m~: In case you missed it, you'll be here forever unless you type exit"
    fi
done

chmod -rx level2/playLevel2.sh
chmod -rx level3/playLevel3.sh
chmod -rx level4/playLevel4.sh
chmod -rx level5/playLevel5.sh
chmod -rx finale.sh












































































# nothing to see here