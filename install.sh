#!/bin/bash

#a9dotfiles/
#├── _bash_aliases
#├── _bash_logout
#├── _bashrc
#├── _config
#│   └── powerline
#│       ├── colorschemes
#│       │   └── default.json
#│       ├── config.json
#│       ├── powerline.conf
#│       └── themes
#│           └── tmux
#│               └── a9powerline.json
#├── install.sh
#├── LICENSE.md
#├── _profile
#├── README.md
#├── _tmux
#│   ├── mouse-off
#│   └── mouse-on
#├── _tmux.conf
#└── _vimrc

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
       ~/.tmux/mouse-off \
       ~/.tmux/mouse-on \
       ~/.config/powerline/*

# Bash
ln -s $PWD/_bashrc ~/.bashrc
ln -s $PWD/_bash_aliases ~/.bash_aliases
ln -s $PWD/_bash_logout ~/.bash_logout
ln -s $PWD/_profile ~/.profile

# Tmux
mkdir -p ~/.tmux
ln -s $PWD/_tmux.conf ~/.tmux.conf
find $PWD/_tmux -type f -exec ln -s {} ~/.tmux/ \;

# Powerline
mkdir -p ~/.config/powerline/colorschemes
mkdir -p ~/.config/powerline/themes/tmux
ln -s $PWD/_config/powerline/config.json ~/.config/powerline/
ln -s $PWD/_config/powerline/powerline.conf ~/.config/powerline/
ln -s $PWD/_config/powerline/colorschemes/default.json ~/.config/powerline/colorschemes/
ln -s $PWD/_config/powerline/themes/tmux/a9powerline.json ~/.config/powerline/themes/tmux/

# Vim
ln -s $PWD/_vimrc ~/.vimrc
