#!/bin/bash

if ! [ -x "$(command -v node)" ]; then

  echo 'Error: node is not installed. Installing node now'

  echo "$(sudo apt-get install Node.js -y)"

  echo "$(sudo apt-get install npm -y)"

  echo "$(node -v && npm --version)"

else

	echo "$(node -v && npm --version)"

	echo "Node and NPM installed succesfully"

fi

dir="Desktop"

$(cd $dir)

arc="$dir/package"

config_dir="$dir/bootcamp-node-envvars-project-1.0.0.tgz"

if [ -f "$config_dir" && ! -d "$arc" ]

then

        echo "unzipping tgz file"

	$(sudo chmod a+x "$config_dir")

        $(sudo tar -xvzf "$config_dir")

elif [ -d $arc ]; then

	echo "Setting env variable"

	export APP_ENV="dev"

	export DB_USER="myuser"

	export DB_PWD="mysecret"

	$(source .bashrc)

	echo "env $APP_ENV"

	echo "Running Node JS Application"

	$(cd $arc && npm install && node server.js &)

else

        echo "downloading tgz file"

	$(wget -P $dir https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz)

	$(sudo chmod a+x "$config_dir")

        $(sudo tar -xvzf "$config_dir")

fi
