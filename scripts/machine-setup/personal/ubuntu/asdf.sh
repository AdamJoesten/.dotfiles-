#! /usr/bin/env bash

sudo apt-get update && sudo apt-get install -y curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
echo "source \"$HOME/.asdf/asdf.sh\"" >> $HOME/.bashrc
echo "source \"$HOME/.asdf/completions/asdf.bash\"" >> $HOME/.bashrc
hash -r
# Node.js dependencies
sudo apt-get install dirmngr gpg curl gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 20.16.0
asdf global nodejs 20.16.0
asdf install java adoptopenjdk-21.0.4+7.0.LTS
asdf global java adoptopenjdk-21.0.4+7.0.LTS
asdf install python 3.12.0
asdf global python 3.12.0
