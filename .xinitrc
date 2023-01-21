nitrogen --restore &
xset mouse 0 1 &
xrandr
xrdb -merge ~/.Xresources &
pipewire &
wireplumber &
conky -d
exec dbus-run-session i3
