#! /usr/bin/env bash

sudo apt-get install -y bat
mkdir -p $HOME/.local/bin
sudo ln -s /usr/bin/batcat $HOME/.local/bin/bat
