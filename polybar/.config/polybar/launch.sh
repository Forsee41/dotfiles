#!/bin/bash

# Kill existing polybar instances
killall -q polybar

# Wait for full init
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Run polybar (using ~/.config/polybar/config)
polybar mybar &
