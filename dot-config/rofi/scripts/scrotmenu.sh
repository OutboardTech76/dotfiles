#!/bin/bash

rofi_command="rofi -theme themes/scrotmenu.rasi"

### Options ###
screen=""
area=""
#area=""
window=""
#window=""
# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
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

