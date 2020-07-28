#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

export PATH="$HOME/.elan/bin:$PATH"

# Created by `userpath` on 2020-07-19 16:31:40
export PATH="$PATH:/home/kshu/.local/bin"

export XDG_CONFIG_HOME=$HOME/.config

export PS1='[$(whoami)@$(hostname):$(pwd)]\$ '

alias rm='rm -I'
