#!/usr/bin/env bash
 
### Options ###
screen=""
area=""
window=""
# Variable passed to dmenu
options="$screen\n$area\n$window"

# create screenshots folder
mkdir -p $HOME/Pictures/screenshots

chosen="$(echo -e "$options" | dmenu -c -t -ww 495 -x 243 -w 1000 -h 160 -n scrotMenu)"
case $chosen in
    $screen)
        sleep 1;
        scrot $HOME/Pictures/screenshots/`date +%Y-%m-%d_%H:%M:%S`.png
        ;;
    $area)
        scrot -s $HOME/Pictures/screenshots/`date +%Y-%m-%d_%H:%M:%S`.png
        ;;
    $window)
        sleep 1; 
        scrot -u $HOME/Pictures/screenshots/`date +%Y-%m-%d_%H:%M:%S`.png

        ;;
esac

