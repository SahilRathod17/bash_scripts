#!/bin/bash

# This script prints available RAM, Current load & free ROOT partiotion.

echo
echo "----------------------------------------------------------------------------"
echo
freeram=$(free -m | grep Mem | awk '{print $4}')
load=`uptime | awk '{print $9}'`
rootfree=$(df -h | grep '/dev/sda2' | awk '{print $4}')
echo "Available free RAM is $freeram MB"
echo
echo "Current load average $load"
echo
echo "Free root partiotion size is $rootfree"
echo
echo "----------------------------------------------------------------------------"
echo