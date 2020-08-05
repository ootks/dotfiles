# This file is sourced when running startx and 
#    other programs which call xinit
# As in all Bash/sh scripts lines starting with 
#    '#' are comments
setxkbmap -option caps:escape
exec i3
exec /home/kshu/.screenlayout/monitors.sh
