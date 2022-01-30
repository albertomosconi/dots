HISTFILE={$XDG_CACHE_HOME:-$HOME/.cache}/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

setopt autocd extendedglob nomatch
unsetopt beep notify
bindkey -v
stty stop undef
zle_highlight=('paste:none')

autoload -Uz compinit

zstyle ':completion:*' menu select
# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix
zmodload zsh/complist

compinit
_comp_options+=(globdots)

autoload -U colors && colors
PS1="%B%(0?.%F{green}.%F{red})[%T] %F{12}%1~ >> %f "

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

#fortune
#neofetch
#fm6000 -c random
#source /usr/share/nvm/init-nvm.sh
