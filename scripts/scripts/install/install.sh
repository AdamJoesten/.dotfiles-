#! /usr/bin/env bash
sudo apt-get update -y
mkdir -p $HOME/.local/opt
mkdir -p $HOME/.local/bin

# nvim
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update -y
sudo apt-get install make gcc ripgrep unzip git xclip neovim -y
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --set vi /usr/bin/nvim
# sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --set vim /usr/bin/nvim
# sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --set editor /usr/bin/nvim
# sudo update-alternatives --config editor

# wezterm
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo apt-get update -y
sudo apt-get install wezterm -y

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/wezterm 60
sudo update-alternatives --set x-terminal-emulator /usr/bin/wezterm

# openocd
git clone https://github.com/openocd-org/openocd.git $HOME/.local/opt

# firefox-developer-edition
# Create a directory to store APT repository keys if it doesn't exist:
sudo install -d -m 0755 /etc/apt/keyrings

# Import the Mozilla APT repository signing key:
wget -q <a class="c-link" href="https://packages.mozilla.org/apt/repo-signing-key.gpg" target="_blank" rel="noopener noreferrer" data-stringify-link="https://packages.mozilla.org/apt/repo-signing-key.gpg" data-sk="tooltip_parent">https://packages.mozilla.org/apt/repo-signing-key.gpg</a> -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

# The fingerprint should be 35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); print "\n"$0"\n"}'

# Add the Mozilla APT repository to your sources list:
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] <a class="c-link" href="https://packages.mozilla.org/apt" target="_blank" rel="noopener noreferrer" data-stringify-link="https://packages.mozilla.org/apt" data-sk="tooltip_parent">https://packages.mozilla.org/apt</a> mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

# Update your package list and install the Firefox .deb package:
sudo apt-get update && sudo apt-get install firefox-devedition
