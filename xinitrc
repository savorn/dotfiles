# start up applications
redshift-gtk &
pasystray &

# URxvt daemon
urxvtd -q -o -f

# load X resources
xrdb ~/.Xresources

# allow fonts in X server
xset +fp ~/.fonts/gohufont
xset +fp ~/.fonts/ttf
xset +fp /usr/share/fonts/opentype/font-awesome
xset fp rehash

# execute window manager
exec i3
