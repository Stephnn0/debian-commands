# remove unused packages
apt-get auto-remove && apt-get clean

sudo apt remove --purge neovim

sudo apt autoremove

# use terminal
systemctl set-default multi-user.target

# use gui
systemctl set-default graphical.target


# add contrib to repos
sudo add-apt-repository contrib




source /root/.bashrc

find / -name iptables
find / -name ethtool
find / -name tc


which iptables


echo 'export PATH=$PATH:/usr/sbin' >> ~/.bashrc
source ~/.bashrc

export PATH=$PATH:/usr/sbin
