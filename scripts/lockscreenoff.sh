CURRENT="$(xbacklight)"
xbacklight -set 0 -time 2000 -steps 100 && xset dpms force off
i3lock  -c 000001 &
xbacklight -set $CURRENT
