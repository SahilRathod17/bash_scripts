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
 [🔝 Up](#introduction)


 ### System Variables

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
 [🔝 Up](#variables)
