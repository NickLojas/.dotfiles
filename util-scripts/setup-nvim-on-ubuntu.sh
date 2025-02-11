#!/bin/bash

cd `dirname $0`

sudo apt-get update
sudo apt-get install -y build-essential curl wget python3 make unzip zip ripgrep net-tools

# install nvm
if ! nvm ls; then
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
fi

# setup nvim
sudo snap install nvim --classic
cp -r --update=none ../nvim ~/.config

source ~/.bashrc

npm install -g neovim
