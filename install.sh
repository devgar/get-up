#!/bin/bash

# Python-pip 

# ZSH
sudo apt install zsh

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 'export PATH="$HOME/.bin:$PATH"' >> $HOME/.zprofile
echo 'alias zshrc="nano ~/.zshrc; source ~/.zshrc'
echo 'alias zprofile="nano ~/.zprofile; source ~/.zprofile'
echo 'source $HOME/.zprofile' >> $HOME/.zshrc

# RustUp
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Go Version Manager
sudo apt-get install curl git mercurial make binutils bison gcc build-essential
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
echo 'export PATH="$HOME/.gvm:$PATH"' >> $HOME/.zprofile
source ~/.zprofile

gvm install go1.14.2
gvm use go1.14.2

# Node Version Manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install --lts

npm i -g yarn
