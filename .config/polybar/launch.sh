#!/usr/bin/env bash

killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar1.log 
polybar darkliner >>/tmp/polybar1.log 2>&1 & disown

echo "Bars launched..."
