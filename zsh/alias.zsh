alias pu='pushd'
alias po='popd'

alias -- -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ...='cd ../../..'

alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias d='dirs -v | head'

alias _='sudo'

alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -lh'
alias lh='ls -l'
alias la='ls -lA'
alias lah='ls -lAh'

alias g='git'
alias m='mpv'
alias t='tree'
alias v='vim'

alias -- rename='perl-rename'
alias -- rename_='perl-rename "s/ /_/g" *'
alias -- rename-='perl-rename "s/_-_/-/g" *'
alias -- renameU='perl-rename "s/_(\w)/_\u\1/g" *'
alias -- rename0='perl-rename "s/-([0-9])\./-0\1\./" *'

alias -- avimkv='for i (*.avi) ffmpeg -i $i -c copy ${i:r}.mkv'

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

alias -s pdf='apvlv'

# For correct_all
#alias man='nocorrect man'
#alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
#alias sudo='nocorrect sudo'

# Directory aliases
hash -d dak=/mnt/dak
hash -d japan=/mnt/japan
hash -d stuff=/mnt/stuff
