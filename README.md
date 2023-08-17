### Table of content

* [Introduction](#introduction)
* [Variables](#variables)
* [System Variables](#system-variables)
* [Quotes](#quotes)
* [User Input](#user-input)
* [If Statements](#if-statements)
* [Operators](#Operators)
* [Loops](#Loops)
* [Practicing Scripts](#Sample-Scripts)
* [Real Time Use Case](#Real-Time-Use-Case)
* [Sample Scripts](#Sample-Scripts)


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
 [🔝 Up](#introduction)


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
 [🔝 Up](#variables)

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
 [🔝 Up](#system-variables)

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
 [🔝 Up](#quotes)
 

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
 [🔝 Up](#user-input)
 
