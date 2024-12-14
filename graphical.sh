#1 display server: X.11
#2 display manager: gdm3
#3 desktop environemt: gnome
#4 graphics driver: nvidia

# use terminal
systemctl set-default multi-user.target

# use gui
systemctl set-default graphical.target


# display manager
sudo systemctl start gdm3

# xorg


