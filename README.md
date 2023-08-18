### Table of content

* [Introduction](#introduction)
* [Variables](#variables)
* [System Variables](#system-variables)
* [Quotes](#quotes)
* [User Input](#user-input)
* [If Statements](#if-statements)
* [Operators](#operators)
* [Loops](#loops)
* [Practicing Scripts](#practicing-scripts)
* [Real Time Use Case](#real-time-use-case)
* [Sample Scripts](#sample-scripts)


## Introduction 

<p> A Bash script is a plain text file which contains a series of commands. These commands are a mixture of commands we would normally type ourselves on the command line (for example cd or pwd) and commands we could type on the command line but generally wouldn't.</p>

🔹 First script

 <p> Open any text editor you are familiar (for example vi editor) with. It is convention to give files that are Bash Scripts an extension of .sh (here first.sh for example) </p>

 ```
 $ vi first.sh
 ```
 <br>
 
 ```
#!/bin/bash
# First script
echo "Hello World"
 ```
* Line 1 :
  - #! is called as the SHEBANG character, it tells the script to interpret the rest of the lines with an Interpreter /bin/bash. so, if we change to /usr/bin/python then it tells the script to use python interpreter.

* Line 2 :
    - This is comment. Anything after # is not executed ( same as # in python ). It is for our refrence. it is used so that we can define what this script exactly does.

* Line 3 :
    - echo command will print the message on the screen. we can use this command on command-line and it will behave exactly the same.

🔹 Executing Script

 ```
$ sh first.sh
 ```
<br>

```
$ chmod +x first.sh
$ ./first.sh
```

 <details><summary>Example</summary>
 <br>
   <img src="https://github.com/SahilRathod17/bash_scripts/assets/110122808/f2cf3aad-d055-4668-8136-41d319050a85">
 </details>

[🔝 Go to top](#table-of-content)
[🔝 Up](#introduction)

## Variables

<p>A bash variable acts as temporary storage for a string or a number. Bash variables are prevalent when it comes to bash scripting. Variables also make it easy for users to write complex functions and perform various operations. Users can create variables by giving them a name and a value. A name can be anything.</p>

🔹 Working with variables

 <p>A variable is a temporary store for a piece of information. There are two actions we may perform for variables.</p>


 * Setting a value for a variable.
 * Reading or using the value for a variable.

 <pre>To assign a variable we use = sign, VariableName=Value</pre>
 <pre>To read/access the valu of variable we use $VariableName</pre>
  <details><summary>Example</summary>
 <br>
   <img src="https://github.com/SahilRathod17/bash_scripts/assets/110122808/5f40699b-2ee2-4698-b92b-d08fd3436e08">
 </details>

 [🔝 Go to top](#table-of-content)
 [🔝 Up](#variables)


 ## System Variables

 <p>There are some other variables that the system sets for you to use as well. Also kown as Shell Variables.</p>

 | Variable | Description |
 | -------- | ----------- |
 | $0 | Name of the bash script. ( File name ) |
 | $1 - $9 | First nine arguments to the bash script |
 | $# | Tells how many arguments were passed to the bash script. |
 | $@ | All the arguments were passed to the bash script. |
 | $? | Exit status of the most recently run process |
 | $$ | Process ID of the current script |
 | $USER | Username of the current user. |
 | $HOSTNAME | Hostname of the machine. |
 | $SECONDS | Number of seconds since the script started. |
 | $RANDOME | return randome number. |

 🔹 Command-line Arguments

  <p>Command-line arguments are parameters that are passed to a script while executing them in the bash shell.</p>

  <p>Command-line arguments help make scripts interactive for the users. They help a script identify the data it needs to operate on</p>

  ```
  #!/bin/bash
  echo "Hello, $0"
  echo "I am $1 bash $2."
  echo "Let's talk about command line arguments."
  echo "The complete list of arguments is $@"
  echo "Total Number of Parameters: $#"
  echo "The process ID is $$"
  echo "Exit code for the script: $?"
  ```

  ```
  $ ./everyone.sh learning scripting
  ```

  ![cla](https://github.com/SahilRathod17/bash_scripts/assets/110122808/070bd12c-c4bf-4715-a332-7054b3d9e330)

 [🔝 Go to top](#table-of-content)
 [🔝 Up](#system-variables)

 ## Quotes

 <p>Storing a single word in a variable works fine without quotes, but if we want to store a sentence and also want to store special charachters like $,%,@,etc our normal variable assignment will not work.</p>
 
 ![quotes](https://github.com/SahilRathod17/bash_scripts/assets/110122808/9751d23b-bd17-49c2-8f24-6b6b03fddc99)

 <p>When we want variables to store more complex values however, we need to make use of quotes. This is because under normal circumstances Bash uses a space to determine separate items.</p>
 <p>When we enclose our content in quotes we are indicating to Bash that the contents should be considered as a single item. You may use single (') or double quotes ("). Single quotes will treat every character litrally.</p>
 <p>Double quotes will allow you to do substitution (That is include variables within the setting of the value).</p>
 
 ![quotes2](https://github.com/SahilRathod17/bash_scripts/assets/110122808/e3ed346b-52cf-459b-b973-08425830e7a8)

 🔹 Command Substitution

 ![quotes3](https://github.com/SahilRathod17/bash_scripts/assets/110122808/e74fb5c7-6a47-40a7-9c2f-3477d6f3eb14)

 [🔝 Go to top](#table-of-content)
 [🔝 Up](#quotes)

 ## User Input

 🔹 Asking user for input

 Taking input from the user while executing the script, storing it into a variable and then 
 using that variable in our script. We woulde be taking inputs from user like usernames, 
 passwords or confirmation y/n to do this we use command called `read`. This cammand takes the  input and will save it into a variable.

 ```
 #!/bin/bash
 echo "Enter your name"
 read name
 echo "Hello, $name."
 ```

 <details><summary>Output</summary>
 <br>
   <img src="https://github.com/SahilRathod17/bash_scripts/assets/110122808/c181de1b-cdb6-47ee-9200-ef31de028028">
 </details>

🔹 Example

 Two commonly used options are -p which allows you to specify a prompt and -s which makes the 
 input silent. This can make it easy to ask for a username and password combination like the 
 example below :

 ```
 #!/bin/bash
 echo "Enter your name"
 read -p 'name:' username
 echo "Enter your password"
 read -sp 'password:' userpassword
 echo
 if [ $userpassword == 'pass' ]; then
         echo "Welcome to server $username."
 else
         echo "Your password is not correct."
 fi
 ```


 ![sp](https://github.com/SahilRathod17/bash_scripts/assets/110122808/6cfedddf-4a1d-40d6-b650-feb9c4f58775)

Let's understand if-else statement used in this script.

 [🔝 Go to top](#table-of-content)
 [🔝 Up](#user-input)
 

## If Statements

- Decision makeing statements.
- If you use bash for scripting you will undoubtedly have to use conditions a lot. Based on condition you decide if you should execute some commands on the system or not. A basic if statement effectively says, if a particular test is true, then perform a given set of actions. If it is not true then don't perform those actions or perform some other actions.

```
if[ <condition> ]; then
    <perform-this>
else
    <perform-other>
fi
```

Anything between then and fi ( if backwards ) will be executed only if the condition (between the square brackets) is true.

![if](https://github.com/SahilRathod17/bash_scripts/assets/110122808/3cc3296c-7985-4f13-a6be-028bb3d491c5)


🔹 Example

 ```
  #!/bin/bash
  echo "Enter your name"
  read -p 'name:' username
  echo "Enter your password"
  read -sp 'password:' userpassword
  echo
  if [ $userpassword == 'pass' ]; then
          echo "Welcome to server $username."
  else
          echo "Your password is not correct."
  fi
 ```

 [🔝 Go to top](#table-of-content)
 [🔝 Up](#if-statements)

 
 ## Operators

 | Operator | Description |
 | -------- | ----------- |
 | ! EXPRESSION | The EXPRESSION is false. |
 | -n STRING | The length of the STRING is greater than zero. |
 | -z STRING | The length of STRING is zero ( ie it is empty ) |
 | STRING1 = STRING2 | STRING1 is equal to STRING2 |
 | STRING1 != STRING2 | STRING1 is not equal to STRING2 |
 | INTEGER1 -ge INTEGER2 | INTEGER1 is numerically greater than INTEGER2 |
 | INTEGER1 -le INTEGER2 | INTEGER1 is numerically less than INTEGER2 |
 | INTEGER1  -eq INTEGER2 | INTEGER1 is numerically equal to INTEGER2 |
 | -d FILE | FILE exists and is a directory. |
 | -e FILE | FILE exists. |
 | -r FILE | FILE exists and the read permission is granted. |
 | -w FILE | FILE exists and the write permission is granted. |
 | -x FILE | FILE exists and the execute permission is granted. |
 | s FILE | FILE exists and it's size is greater than zero ( ie. it's non-empty ). |

 
 * = is slightly different to -eq. [ 001 = 1 ] will return false as = does a string comparison (ie. character for character the same) whereas -eq does a numerical comparison meaning [ 001 -eq 1 ] will return true.
 * When we refer to FILE above we are actually meaning a path. Remember that a path may be absolute or relative and may refer to a file or a firectory.

 [🔝 Go to top](#table-of-content)
 [🔝 Up](#operators)


 ## Loops

 <p>Loops allow us to took a series of commands and keep rerunning them until a particular situation is reached. they are useful for automating repetitive tasks.</p>

 
🔹 For Loop

 A `for loop` is bash programming language statement which allows code to be repeatedly executed. A for loop is classified as an iteration statement i.e. it is repetition of a process within a bash script. For example, you can run Linux command or task 5 times or read and process list of files using a for loop. A for loop can be used at a shell prompt or within a shell script itself.

* Syntax :

```
for var in <list>
do
<commands>
done
```

The `for loop` will take each item in the list ( in order, one after the other), assign that item as the value of the variable var, execute the commands between do and done then go back to the top, grab the next item in the list and repeat over. The list is defined as a series of strings, separated by spaces.

🔹 Example

 The content of $var is printed three time.

 ```
 #!/bin/bash
 for var in {1..3}
 do
 echo "$var"
 done
 ```

 Or write it the `traditional for loop` way :

 ```
 for((a=1; a<=3; a++))
 do
 echo $a
 done
 ```

 They can also be used to act on files.

 This will run the command `cat` on `file1` and `file2`

 ```
 for var in file1 file2
 do
 cat "$var"
 done
 ```

 or the output from a command. This will cat the output from ls.

 ```
 for op in $(ls)
 do
 cat "$op"
 done
 ```

 🔹 For Loop 

  The bash `while loop` is a control flow statement that allows code or commands to be 
  executed repeatedly based on a given condition. For example, run echo command 5 times or 
  read text file line by line or evaluate the options passed on the command line for a script.

  * Syntax :

  ```
  while[ condition ]
  do
  command1
  command2
  command3
  command4
  done
  ```

  command1 to command4 will be executed repeatedly til condition us true. The argument for a 
  while loop can be any boolean expression. Infinite loops occur when the condition never 
  evaluates to false. For example, For example, following while loop will print hello 5 times 
  on screen.

  ```
  #!/bin/bash
  a=1
  while[ $a -le 5 ]
  do
  echo "$a Hello"
  x=$(( $x + 1 ))
  done
  ```

 [🔝 Go to top](#table-of-content)
 [🔝 Up](#loops)
 
  
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

 [🔝 Go to top](#table-of-content)
 [🔝 Up](#practicing-scripts)
