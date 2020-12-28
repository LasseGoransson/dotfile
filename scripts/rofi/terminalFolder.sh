#!/usr/bin/env bash

# Open various folders in rofi

function list_folders()
{
    find ~/sem/ -maxdepth 1 -type d | awk -F'/' 'ORS="";{print $4; print "/"; print $5; print "\n"}'
}


FOLDER=$(list_folders | rofi -dmenu -p "Open terminal")

echo "~/$FOLDER"
urxvt -cd ~/$FOLDER
