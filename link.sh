#!/bin/bash
mkdir -p /home/pockethook/backup
mv /home/pockethook/.{bashrc,vimrc,xinitrc,Xresources} /home/pockethook/backup
mv /home/pockethook/.config/awesome/rc.lua /home/pockethook/backup
mv /home/pockethook/.config/awesome/themes/custom/theme.lua /home/pockethook/backup
mkdir -p /home/pockethook/.config/awesome/themes/custom
ln -s /home/pockethook/dotfiles/bashrc /home/pockethook/.bashrc
ln -s /home/pockethook/dotfiles/rc.lua /home/pockethook/.config/awesome/rc.lua
ln -s /home/pockethook/dotfiles/theme.lua /home/pockethook/.config/awesome/themes/custom/theme.lua
ln -s /home/pockethook/dotfiles/vimrc /home/pockethook/.vimrc
ln -s /home/pockethook/dotfiles/xinitrc /home/pockethook/.xinitrc
ln -s /home/pockethook/dotfiles/Xresources /home/pockethook/.Xresources
