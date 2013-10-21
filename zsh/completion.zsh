autoload -Uz compinit && compinit

# Don't trust cache when completing (instead of typing rehash)
zstyle ':completion:*' rehash true

# Start menu highligh selection if ambiguous situation produces >= 1 choice
zstyle ':completion:*' menu select=1

# Group output
zstyle ':completion:*' group-name ''

# Built in colours
zstyle ':completion:*' list-colors ''

# Colours
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Completion hierarchy
zstyle ':completion:*' completer _expand _complete _correct _ignored _approximate

# Show comments if availiable
zstyle ':completion:*' verbose yes

# Case-insensitive, partial-match, substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Cache completion
zstyle ':completion:*' use-cache true

# Cache path
zstyle ':completion:*' cache-path ~/.zsh/cache/ 
