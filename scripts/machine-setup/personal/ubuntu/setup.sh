#! /usr/bin/env bash

apt-get update && apt-get upgrade -y
apt-get install build-essential -y
apt-get install curl -y
apt-get install stow -y
apt-get install cmake -y

source ./git.sh
source ./neovim.sh
source ./bash.sh
source ./dotfiles.sh
source ./mullvad.sh
source ./1password.sh

# Check the exit status of the 1password.sh script
if [ $? -eq 1 ]; then
    echo "1password configuration was not completed. Exiting..."
    exit 1
fi
echo "1password configuration completed successfully. Continuing..."
