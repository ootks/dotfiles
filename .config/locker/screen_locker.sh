#!/bin/bash

# Default color of ring
D='#888888aa'
# Default color of inside
I='#88888800'
# Verifying ring color
V='#bbbbbbff'
# Wrong ring color
W='#aa888800'
# Color of separator
L='#dddddd00'
# Color of outer separator
S='#DDDDDD00'
# Color of the time
T='#ffffffff'
# Background color
B='#444444ff'

# Radius of unlock indicator
WIDTH=100
# Radius of the ring around the indicator
RWIDTH=4

# lock the screen
i3lock --linecolor=$L --separatorcolor=$S -k --timecolor=$T --datecolor=$T --indicator --ringcolor=$D --insidecolor=$I --keyhlcolor=$V  --timestr="%H:%M" -S HDMI1 --veriftext="" --ringvercolor=$V --insidevercolor=$D --wrongtext="" --ringwrongcolor=$W --datestr="%a, %b %d" --insidewrongcolor=$V -i /tmp/unsplash-lockscreen.png --radius=$WIDTH i --ring-width=$RWIDTH --color=$B

exit 0


