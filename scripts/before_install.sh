#!/bin/bash

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

#create our working directory if it doesnt exist
DIR="/touchh"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  sudo mkdir ${DIR}
fi

#removing if package.jsonlock file
DIR="/touchh/package-lock.json"
if [ -f "$DIR" ]; then
  echo "${DIR} removing"
  sudo rm -f ${DIR}
else
  echo "${DIR} exists"
fi