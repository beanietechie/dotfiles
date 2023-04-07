export EDITOR=nvim
export VISUAL=nvim

bindkey -v
setopt autocd

autoload -U compinit && compinit

autoload -U colors && colors

PROMPT="%{$fg[red]%}%(?..%? )%{$reset_color%}%{$fg[blue]%}%(3~|.../%2~|%~)%{$reset_color%} "

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

alias \
	ls="command ls --color=auto --group-directories-first --sort=extension" \
	la="command ls --color=auto --group-directories-first --sort=extension -A" \
	ll="command ls --color=auto --group-directories-first --sort=extension -hl" \
	lla="command ls --color=auto --group-directories-first --sort=extension -Ahl"
