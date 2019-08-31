#!/usr/bin/env bash
shopt -s expand_aliases
alias conf='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
TEXT=""
if [ $(conf status | grep "nothing to commit" | wc -l) -eq 0 ]
then
    #modified
    TEXT="%{B#ff4b14}   %{F-}"
else
    # not modified
   TEXT="%{B#0f3} "
fi

if [ $(conf push -n 2>1 | grep "Everything up-to-date" | wc -l) -eq 1 ]
then
    #modified
    TEXT="$TEXT"
else
    # not modified
    TEXT="%{B#ffffff}"
fi
echo -e $TEXT
