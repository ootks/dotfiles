#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l=ls
export PS1='[\u@\h:\w]\$ '

# Created by `userpath` on 2020-07-19 16:31:40
export PATH="$PATH:/home/kshu/.local/bin"

export PYTHONPATH="/home/kshu/.local/bin:$PYTHONPATH"

export PATH="$HOME/.elan/bin:$PATH"

export CONFIG="$HOME/.config"

# Add/read the set up documentation
alias addset="vim /home/kshu/arch_setup; config add /home/kshu/arch_setup"

# Read the diary
alias readdiary="vim /home/kshu/projects/diary/received_texts"

# From https://news.ycombinator.com/item?id=11070797
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'


alias rm='rm -i'
alias cp='cp -i'

