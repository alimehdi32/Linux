#!/bin/bash
echo Enter username
read user
loggedIn=$(who | cut -d  " " -f 1)
if [ "$user" = "$loggedIn" ]
then
echo $user is logged in  
else 
echo $user is not logged in
fi