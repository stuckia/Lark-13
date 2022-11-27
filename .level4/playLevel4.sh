#!/bin/bash

if [ -f "lock" -a -f "key" ]; then
    # dont rm the files since the player is going to need to play the level again
    #rm lock
    #rm key
    touch riddle
    chmod -r riddle

    echo "I speak without a mouth and hear without ears" > riddle
    echo "I have no body but I come alive with wind" >> riddle
    echo "What am I?" >> riddle
    echo "echo" >> riddle

    echo
    echo "Mr Game: Welcome back to my game."
    echo "Mr Game: I can't remember how you managed to pass the previous level"
    echo "Mr Game: But I suppose that doesn't matter since you're here now"
    sleep 1
    echo
    echo
    echo -e "~: Keep following the game while I tweak the level for you"
    sleep 1
    echo
    echo
else
    echo
    echo "Entry not permitted"
    echo "Make sure your current directory (cd) is in the level4 folder"
    return
fi

echo "This level contains a riddle"
echo "In order to move forward in the game, you must solve it"

count=1

while :
do
    echo "I speak without a mouth and hear without ears"
    echo "I have no body but I come alive with wind"
    echo "What am I?"
    sleep 1
    read -p "> " answer
    
    if [ "$answer" = "echo" ]; then
        echo
        echo
        echo "Congratulations, you passed!"
        echo "Level4 complete, level5 now unlocked"
        break
    elif [ $count -eq 3 ]; then
        echo
        echo
        echo "~: I found the answer, let me help you out"
        echo "~: It seems there is a file named riddle in the level4 folder"
        echo "~: The file is locked right now, but maybe you can change the permissions to peek at the answer"
        echo "~: Try using the following command to allow reading permissions: chmod +r [file]"
        echo "~: I'll kick you out of the level so you can look at it"
        echo "~: Remember that you can open the contents of the file using cat"
        break
    else
        echo "Sorry, that was incorrect"
        echo "Try again"
        echo
        echo
        sleep 1
    fi

    count=`expr $count + 1`

done