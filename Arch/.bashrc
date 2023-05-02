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
#https://gitlab.com/dwt1/bash-insulter
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

PS1='[\u@\h \W]\$ '
clear && colorscript random
echo "Arch Btw"
alias pm='sudo pacman'
alias pms='sudo pacman -Syu'
alias pmr='sudo pacman -Rncs'
alias pma='sudo pacman -S'
alias dc='cd'
alias mdkir='mkdir'
alias vin='nvim'
alias vim='nvim'
export PATH="$HOME/.local/bin/:$PATH"
