#! /usr/bin/env bash
sudo apt-get update -y
mkdir -p $HOME/.local/opt
mkdir -p $HOME/.local/bin

# asdf
# NOTE: asdf for oh-my-zsh which will source this and setup completions.
# WARNING: If you are using a ZSH Framework the associated asdf plugin may need to be updated to use the new ZSH completions properly via fpath. The Oh-My-ZSH asdf plugin is yet to be updated, see ohmyzsh/ohmyzsh#8837.
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
# python depencencies
sudo apt-get install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev -y
asdf plugin-add python
asdf install python 3.10.0
asdf global python 3.10.0

# rshell
pip install rshell
asdf reshim python
sudo usermod -a -G dialout $USER

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
sudo apt-get install cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential -y
arm-none-eabi-gcc -v
sudo apt-get install gdb-multiarch -y
gdb-multiarch -v
sudo apt-get install automake autoconf texinfo libtool libhidapi-dev libusb-1.0-0-dev -y
git clone https://github.com/openocd-org/openocd.git $HOME/.local/opt/openocd
sudo cp $HOME/.local/opt/openocd/contrib/60-openocd.rules /etc/udev/rules.d/60-openocd.rules
$HOME/.local/opt/openocd/bootstrap
$HOME/.local/opt/openocd/configure --enable-cmsis-dap --enables-cmsis-dap-v2
make -C $HOME/.local/opt/openocd -j4
sudo ln -s $HOME/.local/opt/openocd/src/openocd $HOME/.local/bin/openocd
openocd -h

# firefox-developer-edition
# Create a directory to store APT repository keys if it doesn't exist:
sudo install -d -m 0755 /etc/apt/keyrings

# Import the Mozilla APT repository signing key:
wget "https://packages.mozilla.org/apt/repo-signing-key.gpg"-O - | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

# The fingerprint should be 35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); print "\n"$0"\n"}'

# Add the Mozilla APT repository to your sources list:
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

# Update your package list and install the Firefox .deb package:
sudo apt-get update && sudo apt-get install firefox-devedition
