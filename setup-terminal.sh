#!/bin/bash
echo
echo "Instaling ZSH if not exists..."
echo

FILE=~/.zshrc


if [  -e "$FILE" ]; then
  if [[ $OSTYPE == 'darwin'* ]]; then
    brew update
    brew install zsh
  else
    sudo apt update
    sudo apt upgrade -y
    sudo apt install zsh

  fi

  chsh -s $(which zsh)
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  echo '
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi

  export ZSH="$HOME/.oh-my-zsh"
  ZSH_THEME="powerlevel10k/powerlevel10k"

  plugins=(git)

  source $ZSH/oh-my-zsh.sh

  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
  ' >> $ZSHFile


  if [ -e "~/.bashrc"]; then
    export_lines=$(cat ~/.bashrc | grep "^export ")

    echo -n "" >> $ZSHFile
    echo -n "# BASH Exports" >> $ZSHFile
    echo -n "$export_lines" >> $ZSHFile
  fi

  echo
  echo "Openning the ZSH terminal ..."
  echo 
  sleep 3.5

  zsh
fi

