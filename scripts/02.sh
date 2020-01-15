#!/bin/bash

echo "Which user do you want to delete?"
read user

check_user=`cat /etc/passwd | grep $user | awk -F: '$3 >= 1000 {print $1}'`
if [[ "$check_user" == "$user" ]]
then
    sudo passwd -l $user
    proc=`pgrep -u $user`
    if [[ "$proc" != "$NULL" ]]
    then
        sudo kill -9 $proc
    fi
    sudo userdel -f -r $user
    echo "User successfully deleted."
else
    echo "The specified user does not exist."
fi
