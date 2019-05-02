#!/bin/bash
# Author: Lasse Gøransson
# Script creates all the symlinks nessesarry for the dotfiles to work in a Ubuntu 16.04 installation.

DOTF=/home/lasg/dotfiles
HOME=/home/lasg
# Create .bin folder
ln -sf $DOTF/bin $HOME/.bin

# Create .ssh folder
ln -sf $DOTF/dotssh $HOME/.ssh

#xinitrc
ln -sf $DOTF/xinitrc $HOME/.xinitrc

# i3wm config
mkdir -p ~/.config/i3/
ln -sf $DOTF/i3config $HOME/.config/i3/config

# bashrc
ln -sf $DOTF/bashrc $HOME/.bashrc

#vim
ln -sf $DOTF/vim $HOME/.vim
ln -sf $DOTF/vim/vimrc $HOME/.vimrc

#Screenlayout for arandr
ln -sf $DOTF/screenlayouts/ $HOME/.screenlayout

ln -sf $DOTF/Xresources $HOME/.Xresources
