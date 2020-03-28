#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch all polybars and save tmp logs
tee -a /tmp/polybarConnection.log /tmp/polybarMiddle.log /tmp/polybarSizeInfo.log /tmp/polybarAudio.log /tmp/polybarDate.log /tmp/polybarBattery.log /tmp/polybarMonitor.log /tmp/polybarTemperature.log
polybar sizeInfo >>/tmp/polybarSizeInfo.log 2>&1 &
polybar middle >>/tmp/polybarMiddle.log 2>&1 &
polybar connection >>/tmp/polybarConnection.log 2>&1 &
polybar audio >>/tmp/polybarAudio.log 2>&1 &
polybar date >>/tmp/polybarDate.log 2>&1 &
polybar battery >>/tmp/polybarBattery.log 2>&1 &
polybar monitor >>/tmp/polybarMonitor.log 2>&1 &
polybar temperature >>/tmp/polybarTemperature.log 2>&1 &
