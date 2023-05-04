#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ..='cd ..'
# PS1='[\u@\h \W]\$ '
PS1="\[\e[32m\]\u\[\e[00m\]@\h \[\e[32m\]\w \[\e[00m\]> "

bind "set bell-style none"

export EDITOR="nvim"
export VISUAL="nvim"
alias edit=nvim

PATH="$HOME/.local/bin:$PATH"

alias disable-lid-sleep="sudo systemd-inhibit --what=handle-lid-switch sleep"
alias disable-lid-sleep-for-1h="disable-lid-sleep 1h"

alias tb="nc termbin.com 9999"

alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'


eval "$(starship init bash)"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias ll="exa -al"
alias du-advance=ncdu

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

alias zrf="zellij run --floating"
alias ze="zellij edit"

export PATH="$PATH:$HOME/.foundry/bin"
