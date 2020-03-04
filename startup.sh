#!/bin/bash
# Script to facilitate startup for new system

sudo apt install vim
sudo apt install curl
sudo apt install git
sudo apt-get update
sudo apt-get upgrade

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# create bash alias file
touch ~/.bash_aliases

# copy vimrc and bash in right places
cp .vimrc ~/.vimrc
cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile
cp .profile ~/.profile

git config --global user.name "Dieuwke Hupkes"
git config --global user.email dieuwkehupkes@gmail.com
git config --global core.editor "vim"

# to generate new ssh key type
########################################
# ssh-keygen -t rsa -b 4096 -C "dieuwkehupkes@gmail.com"
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
# sudo apt install xclip
# xclip -sel clip < ~/.ssh/id_rsa.pub
# add to github
