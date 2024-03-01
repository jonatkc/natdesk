#!/bin/bash

# update
sudo apt update
sudo apt install nala 

########## Minimal install ##########

# install utils
sudo nala install zoxide fzf tree tmux vim curl wget neofetch ufw flatpak vlc neovim htop btop cifs-utils -y

# add alias to bashrc
cp .bash_aliases ~
cp .tmux.conf ~
cp .vimrc ~
source .bashrc

# upgrade
sudo nala upgrade -y

# Vim Plug
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

##### brave #####
#sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo nala update && sudo nala install brave-browser -y

##### non essential  #####
# sudo nala install nextcloud-desktop yubioath-desktop -y

##### Development #####
# sudo nala install build-essential default-jdk -y

########## flathub repo ##########
#flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
########## apps ##########
#flatpak install com.discordapp.Discord com.yubico.yubioath nl.hjdskes.gcolor3 org.libreoffice.LibreOffice -y


########## DE specific ##########

##### gnome-desktop #####
# sudo nala install gnome-software-plugin-flatpak; flatpak install com.mattjakeman.ExtensionManager -y
######  unintall bloat w/ nala ##### 
# sudo nala purge gnome-games libreoffice* firefox-esr -y

##### kde #####
# sudo nala install plasma-discover-backend-flatpak -y
# sudo nala purge kde-baseapps -y

##### xfce #####
