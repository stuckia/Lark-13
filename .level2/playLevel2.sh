#!/bin/bash


initNextFiles() {
    chmod +rx ../level4/playLevel4.sh
    chmod +w ../level4


    touch ../key
    echo "  XXXXXXXXXXXXXX" > ../key
    echo "XX              XX" >> ../key
    echo "XX      XX      XX" >> ../key
    echo "XX              XX" >> ../key
    echo "  XXXXXXXXXXXXXX" >> ../key
    echo "      XX  XX" >> ../key
    echo "      XX  XX" >> ../key
    echo "      XX    XX" >> ../key
    echo "      XX    XX" >> ../key
    echo "      XXXXXX" >> ../key
    echo >> ../key
    echo "Instructions with lock" >> ../key

    touch ../level4/lock
    echo "      XXXXXX" > ../level4/lock
    echo "    XX      XX" >> ../level4/lock
    echo "    XX      XX" >> ../level4/lock
    echo "  XXXXXXXXXXXXXX" >> ../level4/lock
    echo "XX              XX" >> ../level4/lock
    echo "XX      XX      XX" >> ../level4/lock
    echo "XX      XX      XX" >> ../level4/lock
    echo "XX              XX" >> ../level4/lock
    echo "  XXXXXXXXXXXXXX" >> ../level4/lock
    echo >> ../level4/lock
    echo "Move key into this folder to unlock the level" >> ../level4/lock
    echo "mv [file] [new folder destination]" >> ../level4/lock
}


echo "
Now for everyone's favorite passtime, MATH
In this level you'll have 3 lives: lose them all and you could be here forever
Let's get started, shall we?
"

NUMLIVES=3

while :
do
    RANDOM=`date +%N|sed s/...$//`
    NUM1=$RANDOM
    NUM2=$RANDOM
    SUM=`expr $NUM1 + $NUM2`

    if [ -f "tunnel" ]; then
        break
    fi

    #echo $SUM
    read -p "What is $NUM1 + $NUM2: " answer


    if [ "$answer" = "touch tunnel" ]; then
        $answer
        break
    else
        echo
        echo "What a shame, you got it wrong, or did you?"
        echo "Lucky for you I don't care, so looks like you lost a life"
        NUMLIVES=`expr $NUMLIVES - 1`
        sleep 1
        echo "You now have $NUMLIVES lives left"
    fi

    

    if [ $NUMLIVES -eq 1 ]; then
        sleep 1
        echo 
        echo
        echo -e "\e[91m~: This is getting a little too close for comfort"
        echo -e "\e[91m~: I'm kicking you out of the level before it's too late"
        echo -e "\e[91m~: Make sure you read my new note before you restart the level" 
        echo -e "\e[39m"

        echo "Ok, I've looked at the level2 code and I found something that can help us" > note
        echo "It looks like the program is looking for a file called \"tunnel\"" >> note
        echo "In order to create a file, you're going to need to type: touch [filename]" >> note
        echo "Touching a tunnel should create the file that we need to pass level2. Good luck" >> note

        return
    fi

done

sleep 1
echo "Tunnel discovered"

cd ../.TrappedUsers

if [ "$DIALOGUE" = "true" ]; then
    sleep 1
    echo -e "\e[91m~: Great job, let's just follow the tunnel"
    echo -e "\e[91m~: As long as were out of here, that's all I care about"

    sleep 1
    echo -e "\e[91m~: Man, what is this directory, I've never seen it listed with ls"
    echo -e "\e[91m~: This will probably be important later, for now let's try completing another level"

    sleep 1
    echo 
    echo
    echo -e "\e[39mMr Game: Hey! I dont know how you got here but you need to leave now"
    echo 
    echo
    sleep 1
    echo -e "\e[91m~: I think for now he's right, we can always come back here later"
    echo -e "\e[91m~: Let's cd to get back to the main folder"
    echo
    echo -e "\e[91m~: I faintly recall the next level containing a lock"
    echo -e "\e[91m~: The key should be around the main folder somewhere, go peek at them both"
fi

initNextFiles
echo -e "\e[39m"


























































































































# you're still trying this?
