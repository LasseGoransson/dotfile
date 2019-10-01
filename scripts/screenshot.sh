#!/bin/bash

cd $(dirname $1)
mkdir -p images/
scrot -s 'screenshot-%Y_%m_%d_%H_%M_%S.png' -e 'mv $f images/; echo images/$f';
