#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias la='exa -al --color=always --group-directories-first' # my preferred listing
alias ls='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

alias vim="nvim"
#alias dayz =./home/matoi/GitClones/dztui/sztui.sh

PS1='[\u@\h \W]\$ '
clear && neofetch 
echo "Arch Btw"
