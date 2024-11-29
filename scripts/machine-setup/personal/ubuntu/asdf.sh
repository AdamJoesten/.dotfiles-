#! /usr/bin/env bash

sudo apt-get install -y curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
echo "source \"$HOME/.asdf/asdf.sh\"" >> $HOME/.bashrc
echo "source \"$HOME/.asdf/completions/asdf.bash\"" >> $HOME/.bashrc
hash -r

# Node
sudo apt-get install dirmngr gpg curl gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest
# Python
asdf install uv latest
asdf global uv latest
