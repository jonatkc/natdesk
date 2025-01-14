#!/bin/bash

#### essentials ####
sudo dnf install zoxide tree fastfetch vim neovim gnome-shell-extension-pop-shell tmux curl htop btop vlc -y
sudo dnf upgrade -y

cp .config/.tmux.conf ~
cp .config/.vimrc ~
cp -r .config/.bashrc.d ~

# Vim Plug
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Nvim Plug
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Tmux Plugin
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#### developer settings ####
# sudo dnf install make gdb automake gcc gcc-c++ java-devel kernel-devel -y
#### optional ####
# sudo dnf remove firefox -y
# flatpak install discord chromium extensionmanager nextcloud firefox steam io.github.alainm23.planify -y

#### Brave ####
# sudo dnf install dnf-plugins-core ; sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo ; sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc ; sudo dnf install brave-browser -y
