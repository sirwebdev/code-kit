
#!/usr/bin/env bash
echo
echo "Instaling ripgrep ..."
echo


if [[ $OSTYPE == 'darwin'* ]]; then
  brew update
  brew install ripgrep 
else 
  sudo apt update
  sudo apt upgrade -y

  sudo apt install ripgrep -y
fi


