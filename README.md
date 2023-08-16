### Table of content

* [Introduction](#introduction)
* [Variables](#variables)
* [System Variables](#system-variables)
* [Quotes](#Quotes)
* [User Input](#User-Input)
* [If Statements](#If-Statements)
* [Operators](#Operators)
* [Loops](#Loops)
* [Practicing Scripts](#Sample-Scripts)
* [Real Time Use Case](#Real-Time-Use-Case)
* [Sample Scripts](#Sample-Scripts)


### Introduction 

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

### Variables
