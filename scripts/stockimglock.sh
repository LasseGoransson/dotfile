#!/bin/bash

wget https://source.unsplash.com/random/3840x2160 -O /tmp/lockscreen.jpg
convert /tmp/lockscreen.jpg /tmp/lockscreen.png
i3lock -i /tmp/lockscreen.png
