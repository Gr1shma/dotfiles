#!/usr/bin/env bash

# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
while pgrepf -u $UID -x polybar >/dev/null; do sleep 1;done
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown