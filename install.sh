#!/bin/bash

cp _bash_aliases ~/.bash_aliases
cp _bash_logout ~/.bash_logout
cp _bashrc ~/.bashrc
cp _profile ~/.profile
cp _tmux.conf ~/.tmux.conf
cp _vimrc ~/.vimrc
mkdir -p ~/.tmux/
cp _tmux/* ~/.tmux/
mkdir -p ~/.config/powerline/
cp -r _config/powerline/* ~/.config/powerline/

