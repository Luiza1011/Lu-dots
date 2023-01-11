#!/bin/bash

entries="emacsdaemon\neasyeffects\nk-easyeffects\ndiscord"

selected=$(echo -e $entries|wofi --width 250 --height 210 --dmenu | awk '{print tolower($2)}')

case $selected in
  emacsdaemon)
      exec emacs;;
  easyeffects )
    exec /usr/bin/easyeffects --gapplication-service;;
  k-easyeffects)
    kill easyeffects;;
  discord)
    exec /usr/bin/discord;;
esac
