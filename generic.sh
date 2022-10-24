#!/bin/bash

# utility to check if command exist
exists() { command -v "$1" >/dev/null 2>&1 ; }


# Update
sudo apt update

# vscode
if ! [ -x "$(command -v code)" ]; then
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt install code
fi

# firefox
if ! [ -x "$(command -v firefox)" ]; then
    sudo apt install firefox
fi

# modules
if ! [ -x "$(command -v module)" ]; then
    sudo apt install -y environment-modules
fi

# Latex

# edge
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg

# nvidia driver
sudo ubuntu-drivers autoinstall

# Cleanup and reboot
sudo apt clean 
