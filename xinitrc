# wallpaper
~/.fehbg

# screensaver lock
xscreensaver -no-splash &
xss-lock -- xscreensaver-command -lock &

# change color temp based on time of day
redshift-gtk &

# volume icon
volumeicon &

# battery icon
cbatticon &

# network-manager icon
nm-applet &

# X resources
xrdb ~/.Xresources

# fonts
xset +fp ~/.fonts/tamsyn
xset fp rehash

# dwm status script
~/bin/dwmstatus &

# start window manager
exec dwm
