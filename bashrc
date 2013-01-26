#!/bin/bash
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s globstar

alias l='ls --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'

alias rename='perl-rename'

PS1='[\u@\h \W]\$ '
