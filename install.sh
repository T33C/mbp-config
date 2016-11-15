#!/bin/bash
# Replace the dot files in ~ with these. 
# A backup of the dot files is made, renamed with a timestamp suffix

clear

echo "Backing up the user dotfiles..."
cp ~/.vimrc .vimrc.bak`date +%Y-%m-%d:%H:%M:%S`
cp ~/.bash_profile .bash_profile.bak`date +%Y-%m-%d:%H:%M:%S`
cp ~/.bashrc .bashrc.bak`date +%Y-%m-%d:%H:%M:%S`

echo "Removing any previous dotfiles..."
rm ~/.vimrc
rm ~/.bash_profile
rm ~/.bashrc

echo "Replacing the user dotfiles with these..."
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.bash_profile ~/.bash_profile
ln -s $PWD/.bashrc ~/.bashrc

echo "Setup VIM"
rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

