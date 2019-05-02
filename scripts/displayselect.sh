#!/bin/bash
chosen=$(echo -e "Laptop\nMirror\nExtend" | dmenu -i -p "Select display config:")½t


echo "$chosen"
if [ "$chosen" = "Laptop½t" ]; then /home/lasg/dotfiles/screenlayouts/laptop.sh; fi
if [ "$chosen" = "Mirror½t" ]; then /home/lasg/dotfiles/screenlayouts/mirror.sh; fi
if [ "$chosen" = "Extend½t" ]; then /home/lasg/dotfiles/screenlayouts/extendright.sh; fi
