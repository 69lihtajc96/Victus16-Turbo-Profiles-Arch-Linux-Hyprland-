#!/bin/bash

export DISPLAY=:0
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DBUS_SESSION_BUS_ADDRESS=unix:path=$XDG_RUNTIME_DIR/bus

sudo cpupower frequency-set -g powersave
sudo ryzenadj --stapm-limit=25000 --fast-limit=25000 --slow-limit=25000
sudo nvidia-smi -pm 1
sudo nvidia-smi -pl 60
sudo python3 ~/Programs/omen-fan/omen-fan.py boost n
sudo python3 ~/Programs/omen-fan/omen-fan.py set 30%
notify-send "💤 Энергосбережение включено!"
paplay /usr/share/sounds/freedesktop/stereo/bell.oga

