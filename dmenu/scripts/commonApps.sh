#!/usr/bin/env bash

# Options
files="ﱮ"
mail=""
browser=""
discord="ﭮ"

# Variable passed to dmenu
options="$browser\n$files\n$mail\n$discord"
 
chosen="$(echo -e "$options" | dmenu -c -t -ww 660 -x 262 -w 1200 -h 160 -n commonApps)"

case $chosen in
    $browser)
        tabbed -c -n vimb vimb -e &
        ;;
    $files)
        pcmanfm &
        ;;
    $mail)
        thunderbird &
        ;;
    $discord)
        discord &
        ;;
esac
