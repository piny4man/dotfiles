#!/bin/sh
# Composer
picom &
# Notification
wired &
# Network
nm-applet &
mullvad-vpn &
# Bluetooth
#blueman-manager &
rfkill block bluetooth &
# Volume and Battery
volctl &
cbatticon -u 5 &
wluma &
# Automount devives
udiskie -t &
# Flameshot
flameshot &
# Remove tearing
xrandr --output eDP --set TearFree on &
# Wallpaper
feh --bg-fill Images/Wallpapers/mountain_pixel.png &
#Slimbook
#slimbookbattery &
#slimbookamdcontroller &
# Keyboard layout
setxkbmap es &
# Touchpad gestures
xinput set-prop "UNIW0001:00 093A:0255 Touchpad" 293 1 &
xinput set-prop "UNIW0001:00 093A:0255 Touchpad" 285 1 &
#MEGA
#megasync &
