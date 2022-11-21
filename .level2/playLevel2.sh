#!/bin/bash

#note for level 2, have user touch a file that the level looks for to say that they are done
#after that, have Mr. Game get suspicios and remove some permissions
# do something with cp/mv next

echo "
Now for everyone's favorite passtime, MATH
In this level, you'll be asked a never ending amount of math questions until I decide you're done
Let's get started, shall we?
"

while :
do
    NUM1='gawk {print random()}'
    NUM2='gawk {print random()}'

    read -p "What is $NUM1 + $NUM2: "
done