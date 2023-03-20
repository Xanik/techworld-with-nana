#!/bin/bash

if ! [ -x "$(command -v Node.js)" ]; then
  echo 'Error: node is not installed. Installing node now'

  echo "$(sudo apt-get install Node.js -y)"

  echo "$(sudo apt-get install npm -y)"

  echo "$(Node.js -v && npm --version)"
else
	echo "Node and NPM installed succesfully"
fi
