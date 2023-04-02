export EDITOR=nvim
export VISUAL=nvim

bindkey -v

autoload compinit && compinit

autoload -U colors && colors
PROMPT="%{$fg[red]%}%?%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%} "

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

alias \
	ls="command ls --color=auto" \
	la="command ls --color=auto -A" \
	ll="command ls --color=auto -lh" \
	lla="command ls --color=auto -Alh"
