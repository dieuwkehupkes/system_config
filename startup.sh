#!/bin/bash
# Script to facilitate startup for new system

sudo apt-get update
sudo apt install git
sudo apt install curl
sudo apt-get upgrade

# miktex and texlive
sudo apt-get install texlive-science

# create bash alias file
touch ~/.bash_aliases

# copy vimrc and bash in right places
cp .vimrc ~/.vimrc
cp .bashrc ~/.bashrc
cp .bashrc ~/.inputrc
cp .bash_profile ~/.bash_profile
cp .profile ~/.profile

git config --global user.name "Dieuwke Hupkes"
git config --global user.email dieuwkehupkes@gmail.com
git config --global core.editor "vim"

# Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# solarized
cd ~/.vim/bundle
git clone https://github.com/altercation/vim-colors-solarized.git

# to generate new ssh key type
########################################
# ssh-keygen -t rsa -b 4096 -C "dieuwkehupkes@gmail.com"
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
# sudo apt install xclip
# xclip -sel clip < ~/.ssh/id_rsa.pub
# add to github
