#!/bin/bash

sudo dnf install gcc-c++ chromium-browser java-devel neofetch neovim clang gnome-shell-extension-pop-shell tmux curl htop btop vlc -y
sudo dnf upgrade -y
sudo dnf remove firefox -y
flatpak install discord extensionmanager nextcloud firefox steam -y
