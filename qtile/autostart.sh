#!/bin/sh
picom &
dunst &
nm-applet &
mullvad-vpn &
blueman-applet &
volctl &
udiskie -t &
flameshot &
xrandr --output HDMI-1 --primary --mode 2560x1440 --rate 140 --pos 0x169 --rotate normal --output DP-1 --mode 1920x1080 --rate 120 --pos 2560x0 --rotate right --output DP-2 --off &
feh --bg-fill ~/Images/Wallpapers/landscape.jpg ~/Images/Wallpapers/portrait.jpg &
#megasync &
