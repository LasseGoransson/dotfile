#!/usr/bin/env bash

# Open various folders in rofi

function list_folders()
{
    find ~ -name session.vim -type f -not -path "*.vim/*" | awk -F'/[^/]*$' '{print $1}'
}


FOLDER=$(list_folders | rofi -dmenu -p "Open session")

echo "$FOLDER"
urxvt -cd $FOLDER -e bash --rcfile <(echo '. ~/.bashrc; nvim -S session.vim') &
