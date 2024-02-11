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