sudo apt install xrdp --> remote pc
sudp apt install reminna --> controll machine


// remote pc 

sudo update-rc.d xrdp enable
sudo service xrdp start
adduser --home /remote remote
sudo usermod -aG sudo remote
ifconfig
