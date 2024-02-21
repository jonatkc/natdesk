#!/bin/bash

#### essentials ####
sudo dnf install zoxide chromium-browser neofetch neovim gnome-shell-extension-pop-shell tmux curl htop btop vlc -y
sudo dnf upgrade -y

#### developer settings ####
# sudo dnf install gcc-c++ java-devel clang -y
#### optional ####
# sudo dnf remove firefox -y
# flatpak install discord extensionmanager nextcloud firefox steam -y
