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
        echo "~: this is getting a little too close for comfort"
        echo "~: I'm kicking you out of the level before it's too late"
        echo "~: make sure you read my note before you try that again" 

        echo "Ok, I've looked at the code and I found something that can help us" > note
        echo "It looks like the program is looking for a file called \"tunnel\"" >> note
        echo "In order to do that, you're going to need to type: touch tunnel" >> note
        echo "That should create the file that we need. Good luck" >> note

        exit
    fi

done

#needs to be worked on to actually go to the correct directory
echo "~: great job, lets just follow the tunnel"
echo "~: as long as were out of here, that's all I care about"
exit