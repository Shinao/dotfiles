#!/bin/bash

# set shortcut
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Control><Alt>k']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Control><Alt>j']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Control><Alt>h']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Control>><Alt>l']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Control><Shift><Alt>k']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Control><Shift><Alt>j']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Control><Shift><Alt>h']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Control><Shift><Alt>l']"

google-chrome &
gnome-terminal --window --maximize -x sh -c 'tmux -2' &
# gnome-terminal --window --maximize &
pidgin &
nautilus &
irssi &

sleep 8

wmctrl -r "buddy" -e 0,1200,1200,600,400
wmctrl -r "chrome" -e 0,1980,0,600,400
wmctrl -r "home" -e 0,100,1150,800,500
