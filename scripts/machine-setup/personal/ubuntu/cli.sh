#! /usr/bin/env bash

# json-table
sudo bash -c "cd /usr/local && wget -O - https://github.com/micha/json-table/raw/master/jt.tar.gz | tar xzvf -"
sudo apt-get install fd-find jq ripgrep
sudo ln -s $(which fdfind) $HOME/.local/bin/fd
source ./neovim.sh
