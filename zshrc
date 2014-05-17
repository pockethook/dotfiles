if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

source ~/Github/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

for f (~/.zsh/*.zsh) source $f
