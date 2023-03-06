#!/usr/bin/env bash
echo
echo "Instaling docker and docker-compose ..."
echo


if [[ $OSTYPE == 'darwin'* ]]; then
  echo
  echo
  echo "To install docker visit https://docs.docker.com/desktop/install/mac-install/ and install ..."
  echo
  echo
  sleep 5
else 
  sudo apt update
  sudo apt upgrade -y

  echo
  echo "Removing old docker installation..."
  echo
  sudo apt remove docker-desktop

  rm -r $HOME/.docker/desktop
  sudo rm /usr/local/bin/com.docker.cli
  sudo apt purge docker-desktop

  sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

  apt-cache policy docker-ce

  echo
  echo "Installing docker"
  echo

  sudo apt install docker-ce -y
fi


