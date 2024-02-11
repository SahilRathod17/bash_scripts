#!/bin/bash

# This script finds total number of users and tells how many of them are currently logged in.

echo
echo "---------------------------------------------------------------------"
echo
cat /etc/passwd>user.txt
set `wc -l user.txt`
log=`who|wc -l`
echo "There are $1 users in network."
echo
echo "Thers are $log user loged in right now."
rm user.txt
echo
echo "----------------------------------------------------------------------"