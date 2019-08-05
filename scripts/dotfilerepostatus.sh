#!/usr/bin/env bash
shopt -s expand_aliases
alias conf='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
if [ $(conf status | grep "nothing to commit" | wc -l) -eq 0 ]
then
    #modified
    echo "%{u#ff4b14} Dotfiles changes %{F-}"
else
    # not modified
    echo "%{u#0f0}No change"
fi

