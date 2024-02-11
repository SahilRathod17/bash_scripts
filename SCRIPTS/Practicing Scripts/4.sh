#! /bin/bash

# This script finds the largest number among the 3 given numbers.

echo
echo "-------------------------------------------------------------------------------"
echo "Enter first number"
read a
echo "Enter second number"
read b
echo "Enter third number"
read c

echo
if [ $a -ge $b -a $a -ge $c ]; then
        echo "$a is largest number"
elif [ $b -ge $a -a $b -ge $c ]; then
        echo "$b is largest number"
else
        echo "$c is largest number"
fi
echo
echo "---------------------------------------------------------------------------------"