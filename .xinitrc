#!/bin/sh

export QT_QPA_PLATFORMTHEME=gtk3
export XCURSOR_THEME=phinger-cursors-light
export XCURSOR_SIZE=26

feh --bg-fill "$HOME/.wp"
slstatus &
/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
dex -ae dwm &
exec dwm
