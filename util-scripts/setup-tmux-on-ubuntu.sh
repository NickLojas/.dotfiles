#!/bin/bash

cd `dirname $0`

sudo apt-get update
sudo apt-get install -y build-essential curl wget python3 make unzip zip ripgrep net-tools

# install nvm
if ! nvm ls; then
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
fi

# # setup XDG_CONFIG_HOME - necessary for tmux
# if [[ -z `echo "$XDG_CONFIG_HOME"` ]]; then
# 	echo 'export XDG_CONFIG_HOME=$HOME/.config' >> ~/.bashrc
# fi

# setup tmux
cp -r --update=none ../tmux ~/.config
tmux source ~/.config/tmux/tmux.conf

source ~/.bashrc
