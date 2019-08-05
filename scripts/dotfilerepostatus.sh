#!/usr/bin/env bash
shopt -s expand_aliases
alias conf='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
TEXT=""
if [ $(conf status | grep "nothing to commit" | wc -l) -eq 0 ]
then
    #modified
    TEXT="%{u#ff4b14} Dotfiles changes %{F-}"
else
    # not modified
   TEXT="%{u#0f0}No mod"
fi

if [ $(conf status | grep "ahead" | wc -l) -eq 1 ]
then
    #modified
    TEXT="$TEXT / Local changes"
else
    # not modified
    TEXT="$TEXT"
fi
echo -e $TEXT
