#! /usr/bin/env bash
add-apt-repository ppa:neovim-ppa/unstable -y
apt-get update -y && apt-get install \
make \
gcc \
ripgrep \
unzip \
git \
xclip \
neovim -y
