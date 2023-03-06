echo
echo "Installing lua language server ..."
echo
curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz

if [[ $OSTYPE == 'darwin'* ]]; then
  brew update
  brew install lua
else 
  apt update
  apt upgrade -y
  apt install lua5.3 -y
fi


