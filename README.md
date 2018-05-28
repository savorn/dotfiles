# dotfiles
### What are *dotfiles*?
*Dotfiles* are user-specific configuration files for different applications on Unix-like operating systems such as Ubuntu, Debian, Fedora or macOS.
These files are located inside the user's home directory (e.g. /home/savorn/).
Files can be named preceded with a dot (e.g. /home/savorn/**.vimrc**) or located in a directory preceded with a dot (e.g. /home/savorn/**.config/**).

This respository keeps track of all the changes to my dotfiles.

### How to use my dotfiles
1. Clone the repository.  
   `git clone https://github.com/savorn/dotfiles.git ~/dotfiles`

2. Create symbolic links using `ln -s` command.
   ```
   ln -s "~/dotfiles/i3/config" ~/.config/i3/config
   ln -s "~/dotfiles/i3/i3status.conf" ~/.i3status.conf
   ln -s "~/dotfiles/Xresources" ~/.Xresources
   ln -s "~/dotfiles/bashrc" ~/.bashrc
   ln -s "~/dotfiles/fonts.conf" ~/.config/fontconfig/fonts.conf
   ln -s "~/dotfiles/redshift.conf" ~/.config/redshift.conf
   ln -s "~/dotfiles/vimrc" ~/.vimrc
   ln -s "~/dotfiles/xinitrc" ~/.xinitrc
   ```
