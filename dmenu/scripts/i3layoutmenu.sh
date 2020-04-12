#!/usr/bin/env bash

stacked=""
tabbed=""
split="﬿"
# Variable passed to rofi
options="$stacked\n$tabbed\n$split"

chosen="$(echo -e "$options" | dmenu -c -t -ww 495 -x 243 -w 1000 -h 160 -n layoutMenu)"
case $chosen in
    $stacked)
        i3-msg layout stacked
        ;;
    $tabbed)
        i3-msg layout tabbed
        ;;
    $split)
        i3-msg layout toggle split
        ;;
esac

