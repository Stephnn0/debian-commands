
# 1
sudo nano /etc/group
sudo:x:27:username

# 2
sudo usermod -aG sudo username
groups username


# 3
sudo nvim /etc/sudoers


# User privilege specification
# root	ALL=(ALL:ALL) ALL
username ALL=(ALL:ALL) ALL
