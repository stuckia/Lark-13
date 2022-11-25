#!/bin/bash



#note for level 2, have user touch a file that the level looks for to say that they are done
#after that, have Mr. Game get suspicios and remove some permissions
# do something with cp/mv next

echo "
Now for everyone's favorite passtime, MATH
In this level you'll have 3 lives: loose them all and you could be here forever
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
        echo "You now have $NUMLIVES lives left"
    fi

    

    if [ $NUMLIVES -eq 1 ]; then
        echo 
        echo
        echo -e "\e[91m~: this is getting a little too close for comfort"
        echo -e "\e[91m~: I'm kicking you out of the level before it's too late"
        echo -e "\e[91m~: make sure you read my note before you try that again" 

        echo -e "\e[91m~:Ok, I've looked at the code and I found something that can help us" > note
        echo -e "\e[91m~:It looks like the program is looking for a file called \"tunnel\"" >> note
        echo -e "\e[91m~:In order to do that, you're going to need to type: touch tunnel" >> note
        echo -e "\e[91m~:That should create the file that we need. Good luck" >> note
        return
    fi

done

#needs to be worked on to actually go to the correct directory
echo -e "\e[91m~: great job, lets just follow the tunnel"
echo -e "\e[91m~: as long as were out of here, that's all I care about"
cd ../.TrappedUsers
echo -e "\e[91m~: man, what is this directory, I've never seen it listed with ls"
echo -e "\e[91m~: this will probably be important later, for now lets try completing another level"

sleep 5 # SLEEP CANNOT BE MORE THAN ONE SECOND, NEED TO CHANGE THIS
clear
echo 
echo
echo -e "\e[39mMr Game: Hey! I dont know how you got here but you need to leave now"
echo 
echo
echo -e "\e[91m~: I think for now he's right, we can always come back here later"
echo -e "\e[91m~: Lets cd to get back to the main folder"



