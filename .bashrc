#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't ring bell on tab completion
bind "set bell-style none"

# Set Prompts
# PS1='[\u@\h \W]\$ '
# PS1="\[\e[32m\]\u\[\e[00m\]@\h \[\e[32m\]\w \[\e[00m\]> "
eval "$(starship init bash)"

# Set default editor
export EDITOR="nvim"
export VISUAL="nvim"
alias edit=nvim

# Paths
export PATH="$HOME/.local/bin:$PATH"
export PATH="$(go env GOPATH)/bin:$PATH"
export PATH="$HOME/.mix/escripts:$PATH"

# Dotfiles management
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Activate environments
# eval "$(mise activate bash)"
export INVENTORY="/home/washbin/Desktop/Inventory"

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
alias azshell="docker run -u $(id -u):$(id -g) -v ${HOME}:/home/az -e HOME=/home/az --rm -it mcr.microsoft.com/azure-cli"

# Functions
# bash parameter completion for the dotnet CLI

function _dotnet_bash_complete()
{
  local cur="${COMP_WORDS[COMP_CWORD]}" IFS=$'\n' # On Windows you may need to use use IFS=$'\r\n'
  local candidates

  read -d '' -ra candidates < <(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}" 2>/dev/null)

  read -d '' -ra COMPREPLY < <(compgen -W "${candidates[*]:-}" -- "$cur")
}

complete -f -F _dotnet_bash_complete dotnet
