#!/bin/bash

rofi_command="rofi -theme themes/apps.rasi"

### Options ###
files=" ﱮ "
mail="  "
browser="  "
discord=" ﭮ "
 
# Variable passed to rofi
options="$mail\n$browser\n$files\n$discord"

# -selected-row -> defines default option
chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
case $chosen in
    $mail)
        thunderbird &
        ;;
    $browser)
        firefox &
        ;;
    $files)
        nautilus &
        ;;
    $discord)
        cd $HOME/Discord && ./Discord &
        ;;
esac

