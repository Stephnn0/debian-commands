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
#
#


# debugging

# 1 expected: x11 or wayland

echo $XDG_SESSION_TYPE


# 2 check if gdm3 is in x11

cat /etc/X11/default-display-manager

sudo nano /etc/X11/default-display-manager

# paste this inside: default-display-manager
/usr/sbin/gdm3

reboot

