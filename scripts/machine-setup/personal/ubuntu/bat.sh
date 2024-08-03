#! /usr/local/env bash

sudo apt-get update && apt-get install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
