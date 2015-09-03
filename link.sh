#!/bin/bash

dotfiles=$PWD

mkdir backup

for f in $(ls | grep -v 'README.md\|link.sh\|backup')
do
	mv ~/.$f $PWD/backup
	ln -svf $dotfiles/$f ~/.$f
done

if [ ! -d /home/pockethook/github/zsh-syntax-highlighting ]; then
	mkdir -p /home/pockethook/github
	pushd /home/pockethook/github
	git clone https://github.com/zsh-users/zsh-syntax-highlighting
	popd
fi;
