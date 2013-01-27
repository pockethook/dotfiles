#!/bin/bash
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s globstar

alias l='ls --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'

alias rename='perl-rename'
alias rename_='perl-rename "s/ /_/g" *'
alias rename-='perl-rename "s/_-_/-/g" *'
alias renameU='perl-rename "s/_(\w)/_\u\1/g" *'

alias mnt='mount -o uid=pockethook,gid=users,fmask=027,umask=027'

PS1='[\u@\h \W]\$ '
