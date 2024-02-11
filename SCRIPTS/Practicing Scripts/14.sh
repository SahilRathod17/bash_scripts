#!/bin/bash

# This script monitors the apache process. starts the service if not running.


echo
echo "---------------------------------------------------------------------"
echo
date
echo
if [ -f /var/run/apache2/apache2.pid ]; then
        echo "apache process is running."
        echo
        echo "--------------------------------------------------------------------------"
else
        echo "apache process is not running."
        echo
        echo "starting the apache process."
        echo
        sudo systemctl start apache2 &> /dev/null
        if [ $? -eq 0 ]; then
                echo "started process successfully."
                echo
                echo "--------------------------------------------------------------------------"
        else
                echo "there was some problem while starting the apache server."
                echo
                echo "---------------------------------------------------------------------------"
        fi
fi