# wallpaper
~/.fehbg

# screensaver lock
xscreensaver -no-splash &
xss-lock -- xscreensaver-command -lock &

# change color temp based on time of day
redshift &

# X resources
xrdb /home/savorn/config/.Xresources

# dwm status script
slstatus &

# start window manager
exec dwm
