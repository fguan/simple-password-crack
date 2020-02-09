#!/bin/bash

# The saved password that you want to match
SavedPassword='mypassword'

while read line
do

    if [ "$line" == "$SavedPassword" ]
    then
	printf "*** Matched saved password: $line ***\n"
    else
	printf "Did not match password: $line\n"
    fi
done < my_password_file.txt
