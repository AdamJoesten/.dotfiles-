#! usr/bin/env bash

DEB_URL="https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/obsidian_1.5.12_amd64.deb"
DEB_FILE="~/Downloads/obsidian.deb"

curl -o $DEB_FILE $DEB_URL
sudo dpkg -i $DEB_FILE
sudo apt-get install -f -y
rm $DEB_FILE

