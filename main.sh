#!/bin/bash

# command to fix scripts is: sed -i 's/\r$//' [file]
# in case of issue, needs to be run on all script files (main, finale, reset, and level scripts)


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
    echo "Escape is a lie"
}

initFiles() {
    
    if [ ! -f note ]; then
        touch note

        echo "Glad you can find this, you're already doing better than Sandra ever did." > note
        echo "Anyway, let's snoop around before Mr. Game knows what's going on" >> note
        echo "To look in different folders, try typing: cd [folder name]" >> note
        echo "If you want to come back out of a folder, type: cd .." >> note
        echo "Now that you know the cd and ls commands, lets look around for a clue to get out of here" >> note
    fi

    for i in {2..7}
        do
            if [ -d ".level$i" ]; then
                mv ".level$i" "level$i"
            fi
        done

    if [ ! -f ".TrappedUsers/$UNAME.player" ]; then
        touch ".TrappedUsers/$UNAME.player"
        echo " Player Info 
{
    Name: $UNAME
    Age: Unknown
    Lives: Unknown
    Status: In Progress
    Reasoning: n/a
    Will Be Released: n/a 
}
            " > .TrappedUsers/$UNAME.player

    fi
}

game() {
    read -p "Pick a number: "
    for i in {1..4}
    do
        read -p "Whoops, try again: "
    done
}

. .reset.sh

export DIALOGUE=true


echo "Before anything, I'd like to know your name:"
read -p "> "
export UNAME=$REPLY

if [ "$COLUMNS" -lt 125 ]; then
    $COLUMNS=125
fi

cat << EOF 


**************************************************************************************************************************
|                                                                                                                        |
|     _____                                                         _____  _               _             _               |
|    |  __ \                                             ___       |  __ \(_)             | |           (_)              |
|    | |  | |_   _ _ __   __ _  ___  ___  _ __  ___     ( _ )      | |  | |_ _ __ ___  ___| |_ ___  _ __ _  ___  ___     |
|    | |  | | | | | '_ \ / _  |/ _ \/ _ \| '_ \/ __|    / _ \/\    | |  | | | '__/ _ \/ __| __/ _ \| '__| |/ _ \/ __|    |
|    | |__| | |_| | | | | (_| |  __/ (_) | | | \__ \   | (_>  <    | |__| | | | |  __/ (__| || (_) | |  | |  __/\__ \    |
|    |_____/ \__,_|_| |_|\__, |\___|\___/|_| |_|___/    \___/\/    |_____/|_|_|  \___|\___|\__\___/|_|  |_|\___||___/    |
|                         __/ |                                                                                          |
|                        |___/                                                                                           |
|                                                                                                                        |
|                                                                                                                        |
|            your one stop shop for fun                                                                                  |
|                                                                                                                        |
**************************************************************************************************************************

Are you ready to play?
    1. Yes
    2. Of course

EOF

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
chmod -rx .finale.sh

echo -e "\e[39m"












































































# nothing to see here