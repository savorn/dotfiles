# screensaver
xscreensaver -no-splash &

# background
~/.fehbg

# color temperature
redshift &

# X resources
xrdb -merge ~/.Xresources

# fonts
xset +fp /home/savorn/.fonts/iosevka
xset +fp /home/savorn/.fonts/tamsyn
xset fp rehash

# dwm status
slstatus &

# start window manager
exec dwm
