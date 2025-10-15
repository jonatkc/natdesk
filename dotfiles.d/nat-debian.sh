#!/bin/bash

# update
sudo apt update

# install utils
sudo apt install xsensors stow s-tui zoxide fzf tree tmux vim curl wget neofetch ufw flatpak vlc htop btop cifs-utils -y

# add alias to bashrc
cp dotfiles.d/ ~/dotfiles.d
# cp .config/.bash_aliases ~
# cp .config/.tmux.conf ~
# cp .config/.vimrc ~
# cp -r .config/nvim ~
source ~/.bashrc

# gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']"
# for i in `seq 1 10`; do gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i "['<Super>$i']"; done
# gsettings list-recursively | grep -E 'keybindings|media-keys'

# upgrade
sudo apt upgrade -y

#brave-browser-release
curl -fsS https://dl.brave.com/install.sh | sh
# NVIM install
# sudo apt-get install ninja-build gettext cmake unzip curl build-essential -y
# git clone https://github.com/neovim/neovim $HOME/neovim
# cd $HOME/neovim
# make CMAKE_BUILD_TYPE=RelWithDebInfo
# sudo make install
# cd build && cpack -G DEB && sudo dpkg -i nvim-linux-<arch>.deb

# Vim Plug
#curl -fLo ~/dotfiles.d/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Nvim Plug
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#TMUX Plugin
# git clone https://github.com/tmux-plugins/tpm ~/dotfiles.d/.tmux/plugins/tpm

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
