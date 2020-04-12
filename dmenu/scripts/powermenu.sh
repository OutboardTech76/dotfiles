#!/usr/bin/env bash

power_off=""
reboot=""
lock=""
log_out="" 
 
# Variable passed to rofi
options="$lock\n$power_off\n$reboot\n$log_out"

chosen="$(echo -e "$options" | dmenu -c -t -ww 660 -x 262 -w 1200 -h 160 -n powerMenu)"
case $chosen in
    $power_off)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        ;;
    $log_out)
        i3-msg exit
        ;;
esac

