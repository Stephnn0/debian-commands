# show all logs
sudo journalctl


# live logs
sudo journalctl -f

# check service logs
sudo journalctl -u service-name

# logs after boot
sudo journalctl -b




# KERNEL LOGS

dmesg

dmesg -w



# SYSTEM LOGS

sudo less /var/log/syslog

sudo tail -f /var/log/syslog
