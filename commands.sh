# remove unused packages
apt-get auto-remove && apt-get clean

# use terminal
systemctl set-default multi-user.target

# use gui
systemctl set-default graphical.target


# add contrib to repos
sudo add-apt-repository contrib

