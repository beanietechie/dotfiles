setopt autocd

autoload -U compinit && compinit

autoload -U colors && colors

PROMPT="%{$fg[red]%}%(?..%? )%{$reset_color%}%{$fg[blue]%}%(3~|.../%2~|%~)%{$reset_color%} "

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zhistory

alias \
	ls="command ls -F --color=auto --group-directories-first --sort=extension" \
	la="command ls -AF --color=auto --group-directories-first --sort=extension" \
	ll="command ls -Fhl --color=auto --group-directories-first --sort=extension" \
	lla="command ls -AFhl --color=auto --group-directories-first --sort=extension"
