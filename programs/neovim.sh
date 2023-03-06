
#!/usr/bin/env bash
echo
echo "Instaling neovim ..."
echo


if [[ $OSTYPE == 'darwin'* ]]; then
  brew update
  brew install neovim
else 
  sudo apt update
  sudo apt upgrade -y

  sudo apt install neovim -y
fi

echo "Setting pmartinsdev config into your setup"
echo

git clone https://github.com/pmartinsdev/.nvim.git ~/.config/nvim
sudo chmod +x ~/.config/nvim/install.sh
~/.config/nvim/install.sh
