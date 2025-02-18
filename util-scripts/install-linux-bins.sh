#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential curl wget python3 make unzip zip ripgrep net-tools bc snap

# install nvm
if ! nvm ls; then
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
fi
