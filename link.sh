#!/bin/bash

dotfiles=$PWD

mkdir backup

for f in $(ls | grep -v 'README.md\|link.sh\|backup')
do
	mv ~/.$f $PWD/backup
	ln -svf $dotfiles/$f ~/.$f
done

git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/github/zsh-syntax-highlighting
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
