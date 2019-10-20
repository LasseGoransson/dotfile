#!/bin/sh
cat ~/scripts/configGeneration/global > ~/.Xresources
cat ~/scripts/configGeneration/$(hostname) >> ~/.Xresources
