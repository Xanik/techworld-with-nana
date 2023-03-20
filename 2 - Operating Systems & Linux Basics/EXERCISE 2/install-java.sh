#!/bin/bash
if ! [ -x "$(command -v git java)" ]; then

  echo 'Error: java is not installed. Installing java now'

  echo "$(sudo apt-get install default-jre -y)"

else

	echo "Java installed succesfully"

fi
