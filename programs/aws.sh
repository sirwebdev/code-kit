#!/usr/bin/env bash
echo 
echo "Installing aws-cli ..."
echo

if [[ $OSTYPE == 'darwin'* ]]; then
  curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
  sudo installer -pkg AWSCLIV2.pkg -target /

  echo
  echo "Cleaning trash files ...."
  rm -rf AWSCLIV2.pkg
else 
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  unzip awscliv2.zip
  sudo ./aws/install

  echo
  echo "Cleaning trash files ...."
  rm -rf awscliv2.zip
fi
