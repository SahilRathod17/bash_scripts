#! /bin/bash

# This script greets the user by saying good morning, good afternoon or good evening according to the systems time.

echo
echo "-------------------------------------------------------------------"
echo
# hours = `date|cut -c 12-13`
hours=`date +%H`
if [ $hours -le 12 ]; then
        echo "Good morning."
elif [ $hours -le 16 ]; then
        echo "Good afternoon."
elif [ $hours -le 20 ]; then
        echo "Good evening."
else
        "Good night."
fi
echo
echo "-------------------------------------------------------------------"
echo