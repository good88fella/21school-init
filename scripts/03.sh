#!/bin/bash

reboot="ATTENTION! The server will restart after 15 minutes!"
drink="Who wants to drink beer tonight?"
hello="Hello fellas!"

echo -e "\e[1mWhat message do you want to send?\e[0m"
echo -e "\e[31m${reboot}\e[0m - press 1"
echo -e "\e[34m${drink}\e[0m - press 2"
echo -e "\e[32m${hello}\e[0m - press 3"

while [[ true ]]; do
        read messege
        if [[ -z $messege ]]; then
                break
        elif [[ $messege -eq 1 ]]; then
                echo $reboot | wall
        elif [[ $messege -eq 2 ]]; then
                echo $drink | wall
        elif [[ $messege -eq 3 ]]; then
                echo $hello | wall
        else
                echo $messege | wall
        fi
done
