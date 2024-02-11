#!/bin/bash

# This script finds the factorial of a given number.

echo
echo "--------------------------------------------------------------------------"
echo
fact=1
echo "Enter number to find factorial"
read n
a=$n
# if entered value is less than 0
if [ $n -le 0 ]; then
        echo
        echo "Please enter a valid number"
        echo "-------------------------------------------------------------------------------"
        exit
fi
# now factorial
while [ $n -ge 1 ]; do
        fact=`expr $fact \* $n`
        n=`expr $n - 1`
done
echo
echo "Factorial for $a is $fact"
echo "----------------------------------------------------------------------------"