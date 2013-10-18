#!/bin/bash
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

shopt -s globstar

alias l='ls --color=auto'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias lal='ls -al --color=auto'

alias rename='perl-rename'
alias rename_='perl-rename "s/ /_/g" *'
alias rename-='perl-rename "s/_-_/-/g" *'
alias renameU='perl-rename "s/_(\w)/_\u\1/g" *'
alias rename0='perl-rename "s/-([0-9])\./-0\1\./" *'

alias mnt='sudo mount -o uid=pockethook,gid=users,fmask=027,umask=027'

PS1='[\u@\h \W]\$ '
