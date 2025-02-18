#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential curl wget make unzip zip ripgrep net-tools bc snap python3 python3-pip

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

sudo snap install tree
