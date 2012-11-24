#!/bin/bash
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='ls --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '
