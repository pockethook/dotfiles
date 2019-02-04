alias -- -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -l'
alias lh='ls -lh'
alias la='ls -lA'
alias lah='ls -lAh'

alias g='git'
alias ga='git add'
alias gcm='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git log'
alias gs='git status'

alias dot='git --git-dir=.dot/.git'
alias da='dot add'
alias dcm='dot commit'
alias dco='dot checkout'
alias ddd='dot diff'
alias ddc='dot diff --cached'
alias dl='dot log'
alias ds='dot status'

alias m='mpv'
alias t='tree'
alias td='tree -d'
alias v='vim'

alias -- rename='perl-rename'
alias -- rename_='perl-rename "s/ /_/g" *'
alias -- rename-='perl-rename "s/_-_/-/g" *'
alias -- renameU='perl-rename "s/_(\w)/_\u\1/g" *'
alias -- rename0='perl-rename "s/-([0-9])\./-0\1\./" *'

alias mnt='sudo mount -o gid=users,fmask=113,umask=002'

alias pac='comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort)'

alias -s jpg='sxiv'
alias -s jpeg='sxiv'
alias -s png='sxiv'

alias -s avi='mpv'
alias -s mkv='mpv'
alias -s mp4='mpv'

alias -s flac='mpv'
alias -s mp3='mpv'
alias -s mka='mpv'

alias -s pdf='apvlv'

function py() {
	python -c "import numpy as np; import math; print($*)"
}
