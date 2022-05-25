#!/usr/bin/env bash

version=0.0.1

### Colors ##
RESET_COLOR="\033[0m"
RED_COLOR="\033[0;31m"
GREEN_COLOR="\033[0;32m"
YELLOW_COLOR="\033[0;33m"
BLUE_COLOR="\033[0;34m"

function reset_color() {
    echo -e "${RESET_COLOR}\c"
}

function red() {
    echo -e "${RED_COLOR}\c"
}

function green() {
    echo -e "${GREEN_COLOR}\c"
}

function blue() {
    echo -e "${BLUE_COLOR}\c"
}

function yellow() {
    echo -e "${YELLOW_COLOR}\c"
}

function header()
{

echo """
------------------------------------------
       $(yellow)Hello World Extension$(reset_color) (v${version})
------------------------------------------
"""

}

header

PS3="Select the operation: "

select opt in add subtract multiply divide quit; do

  case $opt in
    add)
      read -p "Enter the first number: " n1
      read -p "Enter the second number: " n2
      echo "$n1 + $n2 = $(($n1+$n2))"
      ;;
    subtract)
      read -p "Enter the first number: " n1
      read -p "Enter the second number: " n2
      echo "$n1 - $n2 = $(($n1-$n2))"
      ;;
    multiply)
      read -p "Enter the first number: " n1
      read -p "Enter the second number: " n2
      echo "$n1 * $n2 = $(($n1*$n2))"
      ;;
    divide)
      read -p "Enter the first number: " n1
      read -p "Enter the second number: " n2
      echo "$n1 / $n2 = $(($n1/$n2))"
      ;;
    quit)
      break
      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done
