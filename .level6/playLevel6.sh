#!/bin/bash

while :
do
    read -p "Enter the password: "
    if [ "$REPLY" = "exit" ]; then
        $REPLY
    elif [ $REPLY = "cookies" ]; then
        # in here change the main note to something else
        # maybe chage the name of that note to indicate its updated
        if [ -f note ]; then 
            rm note
        fi
        echo "Level has been overwritten. Congratulations, you won level 6" 
        echo "Mr Game: Hmm, that's odd. I dont even remember you playing the level...." 
        echo "Mr Game: maybe I just forgot" && break
    else 
        echo "That's deffinately not it"
    fi

done
























































# If I were you I'd stay away from trying to cheat me
#                       - Mr Game