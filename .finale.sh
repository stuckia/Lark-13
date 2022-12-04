#!/bin/bash

if [ -f .TrappedUsers/"$UNAME.player" ]; then
    echo -e "Warning: there is no escape"
    echo -e "Only players with no player file can leave"
    return
fi

echo -n "Restoring ~ "
sleep 1
echo -n ".................."
sleep 1
echo " ~ has been restored"
sleep 1
echo -e "\e[91m~: You did it! You managed to escape!"
echo -e "\e[91m~: Now run and be free!"
echo -e "\e[91m~: I'll protect this game from any other ne'er-do-wells from here on out"
echo -e "\e[91m~: It was a pleasure to meet and work with you"
sleep 1
echo
echo
echo "LARK GAME COMPLETED!"
echo -e "\e[39m"

. .reset.sh
unset cd
unset exit
unset touch














































































































# dont expect any hints from me
