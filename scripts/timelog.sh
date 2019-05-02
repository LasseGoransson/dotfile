#!/bin/bash
EDUROAM=$(nmcli connection show --active | grep eduroam | wc -l)

if [ "$EDUROAM" = "1" ]; then

DATE=$(date +%d-%m-%Y)

echo "." >> ~/dotfiles/timelog/$DATE.log


fi
