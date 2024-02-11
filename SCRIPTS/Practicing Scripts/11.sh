#!/bin/bash

# This script will display system up time, memory utilization & disk utilization.

echo
echo "---------------------------------------------------------------------"
echo
echo "----> The uptime of the system is :"
echo
uptime
echo
echo "----> Memory utilization :"
echo
free -m
echo

echo "----> Disk utilization :"
echo
df -h
echo
echo "----------------------------------------------------------------------"
echo