#!/bin/bash

read -p "Enter the oven password: "

if [ "$REPLY" = "ding" ]; then
    echo "Starting the oven"
    sleep 1
    echo "Oven heat at 100 degrees"
    sleep 1
    echo "Oven heat at 300 degrees"
    sleep 1
    echo "DING"
    sleep 1
    echo "Oven is ready"

else
    echo "Password Denied"
fi
