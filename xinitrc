# keybinds
xbindkeys

# wallpaper
~/.fehbg

# screen timeout
xset s 1200

# screensaver lock
xscreensaver -no-splash &
xss-lock -- slock -m "LOCKED: PASSWORD REQUIRED" &

# change color temp based on time of day
redshift &

# X resources
xrdb ~/.Xresources

# fonts
xset +fp ~/.fonts/Fira
xset +fp ~/.fonts/tamsyn-font
xset fp rehash

# dwm status script
slstatus &

# start window manager
exec dwm
