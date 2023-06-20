#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't ring bell on tab completion
bind "set bell-style none"

# Set Prompts
# PS1='[\u@\h \W]\$ '
PS1="\[\e[32m\]\u\[\e[00m\]@\h \[\e[32m\]\w \[\e[00m\]> "
# eval "$(starship init bash)"

# Set default editor
export EDITOR="nvim"
export VISUAL="nvim"
alias edit=nvim

# Paths
export PATH="$HOME/.local/bin:$PATH"

# Dotfiles management
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Activate environments
eval "$(rtx activate bash)"

# Source scripts
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

# Utility flags
export ERL_AFLAGS="-kernel shell_history enabled" # Erlang shell history

# General aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
alias disable-lid-sleep="sudo systemd-inhibit --what=handle-lid-switch sleep"
alias disable-lid-sleep-for-1h="disable-lid-sleep 1h"
alias tb="nc termbin.com 9999"
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ll="exa -al"
alias du-advance=ncdu
alias zrf="zellij run --floating"
alias ze="zellij edit"
