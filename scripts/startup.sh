i3-msg 'workspace 9; exec signal-desktop'
sleep 2
i3-msg 'workspace 10; exec spotify'
sleep 2
i3-msg 'workspace 1'

picom & 
autotiling &
flashfocus &

bash  ~/scripts/wallpaper.sh &
