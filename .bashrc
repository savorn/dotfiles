#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash aliases
source ~/.bash_aliases

# prompt
PS1='[\u@\h \W]\$ '
source "$HOME/.cargo/env"
source /home/savorn/src/alacritty/extra/completions/alacritty.bash
