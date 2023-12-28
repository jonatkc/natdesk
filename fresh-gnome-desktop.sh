#!/bin/bash

sudo apt update

#install utils
sudo apt install nala vim curl git wget neofetch ufw flatpak gnome-software-plugin-flatpak nextcloud-desktop yubioath-desktop vlc iperf3 neovim htop cifs-utils -y

#flathub repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#upgrade
sudo nala upgrade -y

#brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo nala update

sudo nala install brave-browser


#unintall bloat w/ nala
sudo nala purge gnome-games kde-baseapps libreoffice* firefox-esr -y

#flatpak apps
flatpak install com.discordapp.Discord com.mattjakeman.ExtensionManager com.usebottles.bottles com.yubico.yubioath nl.hjdskes.gcolor3 org.libreoffice.LibreOffice -y
