#! /bin/bash

# This script reverse a number supplied by user.

echo
echo "--------------------------------------------------------------------"
if [ $# -eq 1 ]; then
        if [ $1 -gt 0 ]; then
                num=$1
                sumi=0
                while [ $num -ne 0 ]; do
                        lnum=`expr $num % 10`
                        sumi=`expr $sumi \* 10 + $lnum`
                        num=`expr $num / 10`
                done
                echo
                echo "Reverse of digits is $sumi of $1"
                echo
                echo "---------------------------------------------------------------------------"
        else
                echo
                echo "Number is less than 0"
                echo
                echo "----------------------------------------------------------------------------"
        fi
else
        echo
        echo "Insert only one parameter"
        echo
        echo "---------------------------------------------------------------------------------"
fi