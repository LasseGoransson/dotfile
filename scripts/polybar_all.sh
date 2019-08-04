# Started by I3wm

# Terminate already running bar instances
killall -q polybar
sleep 1

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload example &
done

