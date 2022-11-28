#!/bin/bash

if [ -f .TrappedUsers/"$UNAME.player" ]; then
    echo -e "\e[91m~: You're running out of time!"
    echo -e "\e[91m~: Make sure you delete your player file so you can escape!"
    return
fi

echo -e "\e[91m~: You did it! You managed to escape!"
sleep 1
echo -e "\e[91m~: Now run and be free!"
sleep 1
echo -e "\e[91m~: I'll protect this game from any other ne'er-do-wells from here on out"
sleep 1
echo -e "\e[91m~: It was a pleasure to meet and work with you"
sleep 1
echo
echo
echo "LARK GAME COMPLETED!"

. .reset.sh














































































































# dont expect any hints from me