#!/bin/bash

# update
sudo apt update
sudo apt install nala 

########## Minimal install ##########

# install utils
sudo nala install xsensors stow s-tui zoxide fzf tree tmux vim curl wget neofetch ufw flatpak vlc htop btop cifs-utils -y

# add alias to bashrc
cp ./dotfiles.d/ ~
# cp .config/.bash_aliases ~
# cp .config/.tmux.conf ~
# cp .config/.vimrc ~
# cp -r .config/nvim ~
source ~/.bashrc

# gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']"
# for i in `seq 1 10`; do gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i "['<Super>$i']"; done
# gsettings list-recursively | grep -E 'keybindings|media-keys'



# upgrade
sudo nala upgrade -y

# NVIM install
# sudo apt-get install ninja-build gettext cmake unzip curl build-essential -y && \
# git clone https://github.com/neovim/neovim && \
# cd neovim && git checkout stable && \
# make CMAKE_BUILD_TYPE=RelWithDebInfo && cd build && cpack -G DEB && sudo dpkg -i nvim-linux-<arch>.deb

# Vim Plug
#curl -fLo ~/dotfiles.d/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Nvim Plug
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#TMUX Plugin
# git clone https://github.com/tmux-plugins/tpm ~/dotfiles.d/.tmux/plugins/tpm

##### brave #####
#sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo nala update && sudo nala install brave-browser -y

##### non essential  #####
# sudo nala install nextcloud-desktop yubioath-desktop -y

##### Development #####
# sudo nala install build-essential default-jdk -y

########## flathub repo ##########
#flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
########## apps ##########
#flatpak install com.discordapp.Discord com.yubico.yubioath nl.hjdskes.gcolor3 org.libreoffice.LibreOffice io.github.alainm23.planify -y


########## DE specific ##########

##### gnome-desktop #####
# sudo nala install gnome-software-plugin-flatpak; flatpak install com.mattjakeman.ExtensionManager -y
######  unintall bloat w/ nala ##### 
# sudo nala purge gnome-games libreoffice* firefox-esr -y

##### kde #####
# sudo nala install plasma-discover-backend-flatpak -y
# sudo nala purge kde-baseapps -y

##### xfce #####
