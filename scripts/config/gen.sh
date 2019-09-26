#!/bin/sh
cat ~/scripts/config/global > ~/.Xresources
cat ~/scripts/config/$(hostname) >> ~/.Xresources
