#! /usr/bin/env bash

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update && sudo apt-get install -y make \
gcc \
ripgrep \
unzip \
git \
xclip \
neovim -y
