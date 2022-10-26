#!/bin/bash

curl -L https://github.com/quarto-dev/quarto-cli/releases/download/v1.2.242/quarto-1.2.242-linux-amd64.deb -o quarto-1.2.242-linux-amd64.deb
sudo apt install ./quarto-1.2.242-linux-amd64.deb
rm quarto-1.2.242-linux-amd64.deb
