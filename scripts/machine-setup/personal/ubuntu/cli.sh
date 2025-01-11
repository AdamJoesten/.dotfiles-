#! /usr/bin/env bash

# json-table
sudo bash -c "cd /usr/local && wget -O - https://github.com/micha/json-table/raw/master/jt.tar.gz | tar xzvf -"

# fd jq openocd ripgrep
sudo apt-get install fd-find jq ripgrep
mkdir -p ~/.local/bin/
sudo ln -s $(which fdfind) $HOME/.local/bin/fd

# pico
# sudo apt-get install cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential gdb-multiarch openocd g++ libstdc++-arm-none-eabi-newlib
