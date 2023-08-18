## Practicing Scripts

<details><summary>1. This script scans the name of command and executees it.</summary>
<br>
  
```
echo "-----------------------------------------------------------------------------"
echo
echo "Enter command "
read cmd
echo
$cmd
echo
echo "-----------------------------------------------------------------------------"
```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripts/assets/110122808/521b8d33-a296-4915-9730-14f0b43485fc">
</details>
</details>

<details><summary>2. This script works like a calculator and performs Addition, Subtraction, Division & Multiplication.</summary>
<br>
  
```
# This script works like a calculator and performs Addition, Subtraction, Division & Multiplication.

echo
echo "-------------------------------------------------------------------------"
echo
echo "Enter First No "
read n1
echo "Enter Second No "
read n2

echo
echo " 1. Addition "
echo " 2. Subtraction "
echo " 3. Multiplication "
echo " 4. Division "
echo
echo "Enter your choice "
read ch
echo

if [ $ch = "1" ]; then
    sum=`expr $n1 + $n2`
    echo "Output : $sum "
elif [ $ch = "2" ]; then
    sum=`expr $n1 - $n2`
    echo "Output : $sum "
elif [ $ch = "3" ]; then
    sum=`expr $n1 \* $n2`
    echo "Output : $sum"
elif [ $ch = "4" ]; then
    sum=`expr $n1 / $n2`
    echo "Output : $sum"
fi

echo
echo "---------------------------------------------------------------------------"
```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/a65452c3-4e6c-4742-bdd3-abf0a6fd47ff">
</details>
</details>

<details><summary>3. This script is updated version of previous calculator script, using while loop and switch statement.</summary>
<br>
  
```
#!/bin/bash

# This script works like a calculator and performs Addition, Subtraction, Division & Multiplication. Using loop and switch statement.

echo
echo "---------------------------------------------------------------------------------"
i="y"
while [ "$i" = "y" ]; do
  echo "Enter First No "
  read n1
  echo "Enter Second No "
  read n2
  echo " 1. Addition "
  echo " 2. Subtraction "
  echo " 3. Multiplication "
  echo " 4. Division "
  echo "Enter your choice "
  read ch
  echo
  case $ch in
    1)
      sum=$((n1 + n2))
      echo "Output : $sum";;
    2)
      sum=$((n1 - n2))
      echo "Output : $sum";;
    3)
      sum=$((n1 * n2))
      echo "Output : $sum";;
    4)
      sum=$((n1 / n2))
      echo "Output : $sum";;
    *)
      echo "Invalid choice";;
  esac
  echo
  echo "Do you want to continue ? y/n"
  read i
  if [ "$i" != "y" ]; then
    echo
    echo "---------------------------------------------------------------------------------"
    exit
  fi
done
```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/b55f1232-4d3d-40fc-a2e4-314996885256">
</details>
</details>

<details><summary>4. This script finds the largest number among the 3 given numbers.</summary>
<br>
  
```
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
```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/7f8e1b46-6c57-4472-a5df-5a81a88b1326">
</details>
</details>

<details><summary>5. This script finds the factorial of a given number.</summary>
<br>
  
```
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
```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/a24b9f57-58a7-4972-8b98-894be403e195">
</details>
</details>

<details><summary>6. This script prints all prime numbers from 1 to n.</summary>
<br>
  
```
#!/bin/bash

# This script prints all prime numbers from 1 to n.

echo
echo "-----------------------------------------------------------------------"
echo "Enter the number"
read n
echo
echo "Prime numbers :"
m=2
while [ $m -le $n ]; do
        i=2
        flag=0
        while [ $i -le `expr $m / 2` ]; do
                if [ `expr $m % $i` -eq 0 ]; then
                        flag=1
                        break
                fi
                i=`expr $i + 1`
        done
        if [ $flag -eq 0 ]; then
                echo $m
        fi
        m=`expr $m + 1`
done

```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/3152f149-c0f1-46e6-8226-f190eda21491">
</details>
</details>

<details><summary>7. This script reverse a number supplied by user.</summary>
<br>
  
```
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
```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/f1b35ad7-3044-43a7-aa7b-3c79c17af3d1">
</details>
</details>

<details><summary>8. This script Displays a list of files in the current directory with read, write, and execute permissions.</summary>
<br>
  
```
#!/bin/bash

# Display a list of files in the current directory with read, write, and execute permissions.

echo "------------------------------------------------------------"
echo "Files with read, write, and execute permissions:"
echo "------------------------------------------------------------"

for File in *; do
    if [ -r "$File" ] && [ -w "$File" ] && [ -x "$File" ]; then
        echo "$File"
    fi
done
echo
echo "-------------------------------------------------------------"
```
<details><summary>Output</summary>
<br>

 * All the files with permissions.
 <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/23695db1-08f1-4401-bb70-3573cee51152">
 <br>

 * Running our script to get name of scripts which have all read, write and execute permissions.
 <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/5d10e664-4b5f-478e-847e-ddb9347d2b4e"> 
</details>
</details>


<details><summary>9. This script deletes all the files in the current directory which are 0 bytes in length.</summary>
<br>
  
```
#!/bin/bash

# This script deletes all the files in the current directory which are 0 bytes in length.

echo "--------------------------------------------------------------"
echo "Deleting files with 0 bytes length..."
echo "--------------------------------------------------------------"

# Use 'find' command to locate and delete files with 0 bytes length
find . -type f -size 0 -delete

echo "Files deleted."
echo
echo "---------------------------------------------------------------"
```
<details><summary>Output</summary>
<br>
  
  * Creating empty files.
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/01452c9c-b20e-4f9e-9a81-822f4f22c7f3">
  <br>
  
  * Running our script.
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/a0cc7044-74a9-4d1b-8b1c-9c70010cf2ec">
</details>
</details>

<details><summary>10. This script greets the user by saying good morning, good afternoon or good evening according to the system time.</summary>
<br>
  
```
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

```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/de771a59-f70b-4dff-9857-3cdccc39c433">
</details>
</details>

<details><summary>11. This script will display system up time, memory utilization & disk utilization.</summary>
<br>
  
```
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
```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/cc3fe7ce-8839-4973-b96e-b712c4824e60">
</details>
</details>


<details><summary>12. This script finds total number of users and tells how many of them are currently logged in.</summary>
<br>
  
```
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
```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/237282f5-112b-4546-b7d1-61f3f1b1d8b5">
</details>
</details>

<details><summary>13. This script prints available RAM, Current load & free ROOT partiotion.</summary>
<br>
  
```
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
```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/d15c4895-fc71-4fb9-bffe-cd959d770ab7">
</details>
</details>


<details><summary>14. This script monitors the apache process. starts the service if not running.</summary>
<br>
  
```
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
```
<details><summary>Output</summary>
<br>
  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/188cb7f9-b0a9-4c00-a75d-de4061eb3dc2">
  <br>

  * we can automate this script with the help of crontab.

  <img src="https://github.com/SahilRathod17/bash_scripting/assets/110122808/e4088e60-4a14-4993-a902-584e331ee01a">
</details>
</details>
