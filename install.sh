#!/bin/sh

# /usr/local/a9dotfiles/
# ├── LICENSE.md
# ├── README.md
# ├── dot.Xdefaults
# ├── dot.bash_aliases
# ├── dot.bash_logout
# ├── dot.bash_profile
# ├── dot.bashrc
# ├── dot.config
# │   ├── i3
# │   │   ├── config
# │   │   └── glitchlock
# │   ├── i3blocks
# │   │   ├── blocklets
# │   │   │   ├── battery
# │   │   │   ├── calendar
# │   │   │   ├── ifaddr
# │   │   │   ├── ifsnr
# │   │   │   ├── pubip
# │   │   │   ├── time-ny
# │   │   │   └── time-utc
# │   │   └── config
# │   ├── powerline
# │   │   ├── colorschemes
# │   │   │   └── default.json
# │   │   ├── config.json
# │   │   ├── powerline.conf
# │   │   └── themes
# │   │       └── tmux
# │   │           └── a9powerline.json
# │   ├── sway
# │   │   └── config
# │   └── wofi
# │       ├── config
# │       └── style.css
# ├── dot.tmux
# │   ├── mouse-off
# │   └── mouse-on
# ├── dot.tmux.conf
# ├── dot.vimrc
# ├── install.sh
# └── st
#     ├── config.def.h
#     ├── config.def.h.orig
#     ├── config.def.h_0.8.5
#     └── config_def_h.patch
# 
# 12 directories, 33 files

PREFIX="/usr/local/a9dotfiles"
DOTFILES=".bashrc .bash_profile .bash_aliases .bash_logout .config/powerline .tmux .tmux.conf .vimrc"

mkdir -p $HOME/.config
for FILE in $DOTFILES; do
	ln -sv $PREFIX/dot$FILE $HOME/$FILE
done
