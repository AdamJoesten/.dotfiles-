#! /usr/bin/env bash

apt-get install minicom
usermod -aG dialout $USER
echo "Logout required for user permissions to take effect"
# To avoid conflicting default permissions
# SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", MODE="0660", GROUP="dialout" # Future Technology Devices International, Ltd FT232 Serial (UART) IC


# Reload and apply udev rules
# udevadm control --reload-rules
# udevadm trigger

