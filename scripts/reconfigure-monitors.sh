#!/bin/bash

LAPTOP_STATE_FILE=/proc/acpi/button/lid/LID/state
LAPTOP_MONITOR_NAME=LVDS1
EXTERNAL_MONITOR_NAME=DP2

xrandr --auto

if grep -qi "closed" $LAPTOP_STATE_FILE; then
  echo "Turning off laptop monitor"
  xrandr --output $LAPTOP_MONITOR_NAME --off
elif grep -q "open" $LAPTOP_STATE_FILE; then
  num_of_monitors=$(xrandr | grep " connected" | wc -l)
  if [ "$num_of_monitors" -gt "1" ]; then
    echo "Setting laptop monitor to right of external"
    xrandr --output $LAPTOP_MONITOR_NAME --auto --right-of $EXTERNAL_MONITOR_NAME
  fi
fi
