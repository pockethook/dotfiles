#!/bin/bash

dotfiles=$PWD

mkdir backup

for f in $(ls | grep -v 'README.md\|link.sh\|backup')
do
	mv ~/.$f $PWD/backup
	ln -svf $dotfiles/$f ~/.$f
done
