#!/bin/bash

initNextFiles() {
    if [ ! -f ../level3/note ]; then
        touch ../level3/note
        echo "Another lock? You'd think Mr. Game would be more creative" > ../level3/note 
        echo "I guess you've managed to make a key before, why not try again" >> ../level3/note
    fi
}

touch() {
            if [ $(basename `pwd`) = "level3" ]; then
                    echo "Mr Game: What do you think you're doing?"
                    echo "Mr Game: You will never be allowed to make a key here"
                    echo
                    echo -e "\e[91m~: Well that doesn't seem to work"
                    echo -e "\e[91m~: I wonder if we can destroy the lock"
                    echo -e "\e[91m~: The rm command should be able to delete files, try using it like: rm [filename]"
                    echo -e "\e[39m"

                    echo "Maybe we should try to remove the lock with: rm [filename]" > note
                    
            else
                echo > $1
            fi
        }



if [ -z ${FIRST_TIME+x} ]; then
    FIRST_TIME=true
fi

if [ -f "lock" -a -f "key" ]; then
    
    touch riddle
    chmod -r riddle
    rm key

    echo "I speak without a mouth and hear without ears" > riddle
    echo "I have no body but I come alive with wind" >> riddle
    echo "What am I?" >> riddle
    echo "echo" >> riddle

    echo
    echo "One time key used, new key required to replay"
    echo 
    echo "Mr Game: Welcome back to my game."
    echo "Mr Game: I can't remember how you managed to pass the previous level"
    echo "Mr Game: But I suppose that doesn't matter since you're here now"
    echo

    if [ "$FIRST_TIME" = "true" ]; then
        sleep 1
        echo
        echo
        echo -e "\e[91m~: Keep following the game while I tweak the level for you"
        echo -e "\e[39m"
        echo
    fi
else
    echo
    echo "Entry not permitted"
    echo "Level requires a key to be unlocked"
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
    read -p "> " answer
    
    if [ "$answer" = "echo" ]; then
        echo
        echo
        echo "Congratulations, you solved the riddle!"
        echo "Level4 complete"
        break
    elif [ $count -eq 3 ]; then
        echo
        echo
        echo -e "\e[91m~: I found the answer, but it looks like our key is gone"
        echo -e "\e[91m~: I found a file named riddle in the level4 folder"
        echo -e "\e[91m~: The file is locked right now, but maybe you can change the permissions to peek at the answer"
        echo -e "\e[91m~: Try using the following command to allow reading permissions: chmod +r [file]"
        echo -e "\e[91m~: I'll kick you out of the level so you can look at it"
        echo -e "\e[91m~: Remember that you'll need to make a new key"
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

FIRST_TIME=false
chmod +rx ../level3/playLevel3.sh
echo -e "\e[39m"
initNextFiles































































































# no peeking at this script either