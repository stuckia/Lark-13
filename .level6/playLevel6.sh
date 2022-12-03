#!/bin/bash

initNextFiles() {
    chmod +rx level2/playLevel2.sh
    chmod +w level2

    touch level2/note
    echo "This looks like a good place to try next" >> level2/note
    echo "Try playing the level, and while Mr. Game is distracted, I'll snoop around in the code" >> level2/note
}

while :
do
    read -p "Enter the password: "
    sleep 1

    if [ "$REPLY" = "exit" ]; then
        return
    elif [ $REPLY = "cookies" ]; then
        if [ -f note ]; then 
            echo "Dont forget: you can run any .sh file by typing: . [filename]" > note
        fi
        
        echo "Level has been overwritten. Congratulations, you won level 6"
        sleep 1
        echo
        echo
        echo "Mr Game: Hmm, that's odd. I dont even remember you playing the level...." 
        echo "Mr Game: maybe I just forgot" && break
    else 
        echo "That's definately not it"
    fi

done

echo
echo
echo -e "\e[91m~: Great job, that's one level finished"
echo -e "\e[91m~: In order to escape, you're going to need to \"finish\" all the levels"
echo -e "\e[91m~: Trust me, the only way you can get out of here is by hacking each level"
echo -e "\e[91m~: Let's try and find the next clue"
echo -e "\e[91m~: Don't forget to use the cd, ls, and cat commands to make your way around"

cd ..
initNextFiles
echo -e "\e[39m"


























































# If I were you I'd stay away from trying to cheat me
#                       - Mr Game
