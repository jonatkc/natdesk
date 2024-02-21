#!/bin/bash

#### essentials ####
sudo dnf install zoxide chromium.x86_64 neofetch neovim gnome-shell-extension-pop-shell tmux curl htop btop vlc -y
sudo dnf upgrade -y

#### developer settings ####
# sudo dnf install make gdb automake gcc gcc-c++ java-devel kernel-devel -y
#### optional ####
# sudo dnf remove firefox -y
# flatpak install discord extensionmanager nextcloud firefox steam -y

#### Brave ####
# sudo dnf install dnf-plugins-core ; sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo ; sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc ; sudo dnf install brave-browser -y
