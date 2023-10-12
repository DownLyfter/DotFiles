#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias opentablet='systemctl --user restart opentabletdriver'
alias speedtest='/home/remilia/.config/scripts/speedtest.sh'
alias cdpz='cd /home/remilia/.local/share/Steam/steamapps/common/ProjectZomboid'
#alias wasm-pack='~/.cargo/bin/wasm-pack'
PS1='[\u@\h \W]\$ '
pfetch
export PATH=/home/remilia/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/lib/rustup/bin:/home/remilia/.cargo/bin
