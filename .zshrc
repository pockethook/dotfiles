if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

source ~/github/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

for f (~/.zsh/*.zsh) source $f

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

autoload edit-command-line
zle -N edit-command-line

bindkey -M vicmd ' ' edit-command-line
