#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
tee -a /tmp/polybarConnection.log /tmp/polybarMiddle.log /tmp/polybarLeft.log /tmp/polybarAudio.log /tmp/polybarDate.log /tmp/polybarBattery.log /tmp/polybarMonitor.log
polybar left >>/tmp/polybarLeft.log 2>&1 &
polybar middle >>/tmp/polybarMiddle.log 2>&1 &
#polybar right >>/tmp/polybarRight.log 2>&1 &
polybar connection >>/tmp/polybarConnection.log 2>&1 &
polybar audio >>/tmp/polybarAudio.log 2>&1 &
polybar date >>/tmp/polybarDate.log 2>&1 &
polybar battery >>/tmp/polybarBattery.log 2>&1 &
polybar monitor >>/tmp/polybarMonitor.log 2>&1 &
