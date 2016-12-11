#!/bin/bash

echo "This will delete the following files and directories,"
echo "replacing them with symlinks to the files in this repo:"
echo ""
echo "~/.bashrc"
echo "~/.bash_aliases"
echo "~/.bash_logout"
echo "~/.profile"
echo "~/.vimrc"
echo "~/.tmux.conf"
echo "~/.tmux/"
echo "~/.config/powerline/"

PWD=$(pwd)

rm -rf ~/.bashrc \
       ~/.bash_aliases \
       ~/.bash_logout \
       ~/.profile \
       ~/.tmux.conf \
       ~/.vimrc \
       ~/.tmux/* \
       ~/.config/powerline/*

ln -s $PWD/_bashrc ~/.bashrc
ln -s $PWD/_bash_aliases ~/.bash_aliases
ln -s $PWD/_bash_logout ~/.bash_logout
ln -s $PWD/_profile ~/.profile

mkdir -p ~/.tmux
ln -s $PWD/_tmux/* ~/.tmux/
ln -s $PWD/_tmux.conf ~/.tmux.conf

mkdir -p ~/.config/powerline
ln -s $PWD/_config/powerline/* ~/.config/powerline/

ln -s $PWD/_vimrc ~/.vimrc
