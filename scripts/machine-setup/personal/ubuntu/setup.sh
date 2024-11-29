#! /usr/bin/env bash

sudo usermod -a -G dialout $USER

apt-get update && apt-get upgrade -y
apt-get install build-essential -y
apt-get install curl -y
apt-get install stow -y
apt-get install cmake -y

