#!/usr/bin/env bash
echo
echo "Instaling git ..."
echo


if [[ $OSTYPE == 'darwin'* ]]; then
  brew update
  brew install git 
else 
  sudo apt update
  sudo apt upgrade -y

  sudo apt install git -y
fi


