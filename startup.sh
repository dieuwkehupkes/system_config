#!/bin/bash
# setup script for new computer

sudo apt install vim
sudo apt install curl
sudo apt install git
sudo apt install tmux
sudo apt install virtualenv
sudo apt install python-matplotlib
sudo apt-install python-dev
sudo apt-get update
sudo apt-get upgrade

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

touch .bash_aliases
ssh dhupkes1@illc-lil0.science.uva.nl >> .bash_aliases

git config --global user.name "Dieuwke Hupkes"
git config --global user.email dieuwkehupkes@gmail.com
git config --global core.editors vim

# create solarized folder
mkdir ~./solarized
cd ~/.solarized
git clone https://github.com/seebi/dircolors-solarized.git
eval `dircolors ~/.solarized/dircolors-solarized/dircolors.256dark`
ln -s ~/.solarized/dircolors-solarized/dircolors.256dark ~/.dir_colors

git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
./gnome-terminal-colors-solarized/install.sh



# to generate new ssh key type
########################################
# ssh-keygen -t rsa -b 4096 -C "dieuwkehupkes@gmail.com"
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
# sudo apt install xclip
# xclip -sel clip < ~/.ssh/id_rsa.pub
# add to github
