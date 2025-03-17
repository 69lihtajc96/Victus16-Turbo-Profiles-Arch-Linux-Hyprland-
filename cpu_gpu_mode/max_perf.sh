#!/bin/bash

export DISPLAY=:0
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DBUS_SESSION_BUS_ADDRESS=unix:path=$XDG_RUNTIME_DIR/bus

sudo cpupower frequency-set -g performance
sudo ryzenadj --stapm-limit=54000 --fast-limit=54000 --slow-limit=54000
sudo nvidia-smi -pm 1
sudo nvidia-smi -pl 95
sudo python3 ~/Programs/omen-fan/omen-fan.py boost y
sudo python3 ~/Programs/omen-fan/omen-fan.py set 100%
notify-send "🚀 Максимальная мощность включена!"
paplay /usr/share/sounds/freedesktop/stereo/complete.oga
