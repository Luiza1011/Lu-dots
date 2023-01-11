#!/bin/bash

entries="Lock\nLogout\nSuspend\nReboot\nShutdown"

selected=$(echo -e $entries|wofi --width 250 --height 210 --dmenu --cache-file /dev/null | awk '{print tolower($1)}')

case $selected in
  lock)
    exec swaylock --indicator-thickness 25 --clock --text-color B7D0D3 --text-clear-color B7D0D3 --text-caps-lock-color B7D0D3 --text-ver-color B7D0D3 --text-wrong-color B7D0D3 --inside-color 00000099 --inside-clear-color 00000099 --inside-ver-color 00000099 --inside-wrong-color 00000099 --inside-caps-lock-color 00000099 --ring-color 005950 --separator-color 00000000 --line-clear-color 00000000 --line-caps-lock-color 00000000 --line-ver-color 00000000 --line-wrong-color 00000000 --line-color 00000000  -i /home/chinh4thepro/Pictures/wallpapers/pixels5.gif --effect-blur 10x5;;
  logout)
# it works okay
    killall Hyprland;;
  suspend)
    exec loginctl suspend & swaylock --indicator-thickness 25 --clock --text-color B7D0D3 --text-clear-color B7D0D3 --text-caps-lock-color B7D0D3 --text-ver-color B7D0D3 --text-wrong-color B7D0D3 --inside-color 00000099 --inside-clear-color 00000099 --inside-ver-color 00000099 --inside-wrong-color 00000099 --inside-caps-lock-color 00000099 --ring-color 005950 --separator-color 00000000 --line-clear-color 00000000 --line-caps-lock-color 00000000 --line-ver-color 00000000 --line-wrong-color 00000000 --line-color 00000000  -i /home/chinh4thepro/Pictures/wallpapers/pixels5.gif --effect-blur 10x5;;
  reboot)
    exec loginctl reboot;;
  shutdown)
    exec loginctl poweroff -i;;
esac

