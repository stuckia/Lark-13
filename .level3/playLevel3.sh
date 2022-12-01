#!/bin/bash

if [ -f lock ]; then
    echo "Level is securely locked"
    return
fi

echo "Mr Game: You really shouldn't be here"
echo "Mr Game: I guess we're not playing games anymore...."
echo "Mr Game: If you really insist on breaking into all the levels, follow me to the final level: level 5"
cd ../level5
chmod +rx ../level5/playLevel5.sh
















































































# nice try, sneaky user!