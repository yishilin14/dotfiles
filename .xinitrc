#!/bin/sh

# Start up Programs always that are always used
feh --bg-scale "/home/yslin/.config/i3/images/dark_wallpaper.jpg" &
dropbox start > /dev/null 2>&1 &
fcitx-autostart > /dev/null 2>&1 &
dunst > /dev/null 2>&1 &
compton > /dev/null 2>&1 &
exec i3
