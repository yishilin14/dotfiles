#!/bin/sh

# Misc
export GNOME_DESKTOP_SESSION_ID="01" # fool xdg-open

# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start
--components=gpg,pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

# Auth manager?
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Start up Programs always that are always used
xset -b &
feh --bg-scale "/home/yslin/.config/i3/images/dark_wallpaper.jpg" &
dropbox start > /dev/null 2>&1 &
fcitx-autostart > /dev/null 2>&1 &
dunst > /dev/null 2>&1 &
compton > /dev/null 2>&1 &
exec i3

