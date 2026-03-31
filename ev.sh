#!/bin/bash

display_env()
{
	echo "Current Environment Variables"
	printenv
}

set_env()
{
read -p "Enter variable names: " name
read -p "Enter Variable Values: " value

export $name=$value
echo "Variable $name set successfully"
}

show_env()
{
echo "Environment variables using env command: "
env
}

while true
do
 echo "-----Environment Variables Manager------"
 echo "1.Display Variables(printenv)"
 echo "2. Set New Variables "
 echo "3.Display variables(env)"
 echo "4.Exit"

read -p "Enter choice: " ch

case $ch in
	1) display_env ;;
	2) set_env ;;
	3) show_env ;;
	4) exit;;
	*) echo "Invalid choice" ;;
esac

done

