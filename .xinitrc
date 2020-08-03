# This file is sourced when running startx and 
#    other programs which call xinit
# As in all Bash/sh scripts lines starting with 
#    '#' are comments
exec i3
xrandr --output HDMI-0 --auto --pos 0x840 --output DVI-D-0 --auto --rotate left --pos 1921x0
