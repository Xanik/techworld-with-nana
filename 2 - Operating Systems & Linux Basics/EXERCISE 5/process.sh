#!/bin/bash

read -p "Please enter how you would like to sort your result: memory/cpu " user_inp

read -p "Please enter number of processes to output: " count

if [ "$user_inp" == "memory" ];then
        "$(ps aux --sort -pmem | grep $USER | head -n $count)"
elif [ "$user_inp" == "cpu" ]; then
        "$(ps aux --sort -pcpu | grep $USER | head -n $count)"
else
        echo "Invalid input provided"
fi