#! /usr/bin/env bash

TYPE_HINT_FONT="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/ProggyClean.zip"
EDITOR_FONT="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/0xProto.zip"
TERMINAL_FONT="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Agave.zip"

FONT_DIRECTORY="$HOME/.local/share/fonts/"
DOWNLOAD_DIRECTORY="$HOME/Downloads/fonts/"

# Ensure directories exist
mkdir -p "$FONT_DIRECTORY"
mkdir -p "$DOWNLOAD_DIRECTORY"

wget "$TYPE_HINT_FONT" -P "$DOWNLOAD_DIRECTORY"
wget "$EDITOR_FONT" -P "$DOWNLOAD_DIRECTORY"
wget "$TERMINAL_FONT" -P "$DOWNLOAD_DIRECTORY"

find "$DOWNLOAD_DIRECTORY" -name \*.zip -exec unzip -od "$FONT_DIRECTORY" {} \;

# Refresh font cache
fc-cache -fv
