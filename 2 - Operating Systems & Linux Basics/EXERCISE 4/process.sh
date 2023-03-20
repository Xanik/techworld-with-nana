#!/bin/bash

read -p "Please enter how you would like to sort your result: memory/cpu " user_inp

echo "user sort input gotten: $user_inp"

if [ "$user_inp" == "memory" ];then
	"$(ps aux --sort -pmem | grep $USER)"
elif [ "$user_inp" == "cpu" ]; then
	"$(ps aux --sort -pcpu | grep $USER)"
else
	echo "Invalid input provided"
fi

