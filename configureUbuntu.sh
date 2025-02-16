#!/bin/bash
set -eux

# update and upgrade package repository
sudo apt update && sudo apt upgrade -y

sudo apt-get update && sudo apt-get upgrade -y

# install required packages
sudo apt install git gcc tmux python3 python3.10-venv

# clone my git repository for configuration files
git clone https://github.com/SrivastavaBhaskar/terminalConfig.git

cp terminalConfig/* ~/

# install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# install nodejs
bash nodeInstaller.sh

# download nerdfonts
bash downloadFonts.sh

# source bashrc
source ~/.bashrc
