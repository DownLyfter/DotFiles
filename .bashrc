#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim="nvim"
#alias dayz =./home/matoi/GitClones/dztui/sztui.sh

PS1='[\u@\h \W]\$ '
clear && neofetch
