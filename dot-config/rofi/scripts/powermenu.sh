#!/bin/bash

rofi_command="rofi -theme themes/powermenu.rasi"

### Options ###
#power_off=""
power_off=""
#reboot=""
reboot=""
#lock=""
lock=""
#suspend="鈴"
log_out=""
#log_out="" 
# Variable passed to rofi
options="$power_off\n$reboot\n$lock\n$log_out"
#options="$power_off\n$reboot\n$lock\n$suspend\n$log_out"

#### Set lock screen #####
icon=$HOME/.config/rofi/scripts/lock.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
#screenshot="scrot $icon"
BLURTYPE="2x8"
 
# -selected-row -> defines default option
chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $power_off)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        #$screenshot
        #convert $icon -blur $BLURTYPE $icon
        icon=$HOME/.config/rofi/scripts/lock.png
        TMPBG=/tmp/screen.png
        scrot /tmp/screen.png
        #screenshot="scrot $icon"
        #BLURTYPE="2x8"
 
        #scrot /tmp/screen.png
        convert $TMPBG -scale 10% -scale 1000% $TMPBG
        convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
        i3lock -u -i $TMPBG
        #i3lock -i $icon
        #rm $icon
        #light-locker-command -l
        ;;
#    $suspend)
        #mpc -q pause
        #amixer set Master mute
        #systemctl suspend
#        ;;
    $log_out)
        i3-msg exit
        ;;
esac

