#!/bin/bash
mkdir -p ~/backup
mv ~/.{bashrc,vimrc,xinitrc,Xresources} ~/backup
mv ~/.config/awesome/rc.lua ~/backup
mv ~/.config/awesome/themes/custom/theme.lua ~/backup
mkdir -p .config/awesome/themes/custom
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/rc.lua ~/.config/awesome/rc.lua
ln -s ~/dotfiles/theme.lua ~/.config/awesome/themes/custom/theme.lua
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/xinitrc ~/.xinitrc
ln -s ~/dotfiles/Xresources ~/.Xresources
cp 10-keyboard.conf /etc/X11/xorg.conf.d/
