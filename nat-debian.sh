#!/bin/bash

# update
sudo apt update
sudo apt install nala 

########## Minimal install ##########

# install utils
sudo nala install vim curl wget neofetch ufw flatpak vlc iperf3 neovim htop cifs-utils -y
# non essential 
# sudo nala install nextcloud-desktop yubioath-desktop

# add alias to bashrc
cp .bash_aliases ~
cp .tmux.conf ~
cp .vimrc ~
source .bashrc

# upgrade
sudo nala upgrade -y

# brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo nala update

sudo nala install brave-browser -y

##### Development #####
# sudo nala install build-essential default-jdk

# unintall bloat w/ nala
# sudo nala purge libreoffice* firefox-esr -y

########## flathub repo ##########
#flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
########## apps ##########
#flatpak install com.discordapp.Discord com.yubico.yubioath nl.hjdskes.gcolor3 org.libreoffice.LibreOffice -y


########## DE specific ##########

##### gnome-desktop #####
# sudo nala install gnome-software-plugin-flatpak; flatpak install com.mattjakeman.ExtensionManager 
# sudo nala purge gnome-games

##### kde #####
# sudo nala install plasma-discover-backend-flatpak 
# sudo nala purge kde-baseapps

##### xfce #####
