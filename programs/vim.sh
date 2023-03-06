
#!/usr/bin/env bash
echo
echo "Instaling vim ..."
echo


if [[ $OSTYPE == 'darwin'* ]]; then
  brew update
  brew install vim 
else 
  sudo apt update
  sudo apt upgrade -y

  sudo apt install vim -y
fi


