#!/bin/bash

cd `dirname $0`

sudo apt install tmux -y

# setup tmux
cp -r --update=none ../tmux ~/.config
tmux source ~/.config/tmux/tmux.conf

source ~/.bashrc
