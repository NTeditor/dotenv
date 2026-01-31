if status is-login
  if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" = 1
    exec start-hyprland &>>~/.cache/hyprland.log
  end
end
