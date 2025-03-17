#!/bin/bash

export DISPLAY=:0
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DBUS_SESSION_BUS_ADDRESS=unix:path=$XDG_RUNTIME_DIR/bus

sudo cpupower frequency-set -g schedutil
sudo ryzenadj --stapm-limit=35000 --fast-limit=40000 --slow-limit=40000
sudo nvidia-smi -pm 1
sudo nvidia-smi -pl 80
sudo python3 ~/Programs/omen-fan/omen-fan.py boost n
sudo python3 ~/Programs/omen-fan/omen-fan.py bios-control y
notify-send "⚖️ Баланс активирован!"
paplay /usr/share/sounds/freedesktop/stereo/message.oga
