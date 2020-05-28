# wallpaper
~/.fehbg

# screensaver lock
xscreensaver -no-splash &
xss-lock -- xscreensaver-command -lock &

# change color temp based on time of day
redshift &

# X resources
xrdb ~/.Xresources

# fonts
#xset +fp ~/.fonts/Fira
#xset +fp ~/.fonts/tamsyn-font
#xset fp rehash

# dwm status script
slstatus &

# start window manager
exec dwm
