# rxvt-unicode daemon
urxvtd -q -o -f

# load xresources
xrdb ~/.Xresources

# start redshift
redshift &

# execute WM
exec i3
