# change color temp based on time of day
redshift &

# X resources
xrdb ~/.Xresources

# fonts
xset +fp ~/.fonts/tamsyn
xset fp rehash

# dwm status script
~/bin/dwmstatus &

# start window manager
exec dwm
