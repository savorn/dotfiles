# urxvt daemon
urxvtd -q -o -f

# load xresources
xrdb ~/.Xresources

# xscreensaver lock
xscreensaver -no-splash &
xss-lock -- xscreensaver-command --lock &

# fonts
xset +fp ~/.fonts/tamsyn
xset fp rehash

# change color temperature
redshift &

# dwm status
slstatus &

exec dwm
