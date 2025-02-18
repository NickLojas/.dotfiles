#!/bin/bash

cd `dirname $0`

# setup nvim
sudo snap install nvim --classic
cp -r -n ../nvim ~/.config

source ~/.bashrc

npm install -g neovim
