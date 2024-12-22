
# root
sudo -s


apt update
apt upgrade


hostnamectl set-hostname worker

# add master ip 
printf "\n10.0.2.15 master\n" >> /etc/hosts

# DISABLE SWAP
# install sudo and use sudo
swapoff -a
free -m

# Disable swap completely by commenting out the swap entry in /etc/fstab

# IP BRIDGE FOR NODES NETWORK COMMUNICATION
# install sudo and use sudo
printf "overlay\nbr_netfilter\n" >> /etc/modules-load.d/k8s.conf
modprobe overlay
modprobe br_netfilter

# VERIFY: lsmod | grep overlay 

# SETUP SYSCTL PARAMS
printf "net.bridge.bridge-nf-call-iptables = 1\nnet.ipv4.ip_forward = 1\nnet.bridge.bridge-nf-call-ip6tables = 1\n" >> /etc/sysctl.d/k8s.conf
# use sudo
sysctl --system


sudo apt-get install -y apt-transport-https ca-certificates curl gpg

# INSTALL KUBERNETES REPOSITORY AND KEYRING
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

# SETUP APT WITH KUBERNETES REPOSITORY
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list

# INSTALL KUBELET, KUBEADM, KUBECTL
sudo apt update
sudo apt install -y kubelet kubeadm kubectl

# AVOID PACKAGES BEING UPDATED AUTOMATICALLY
sudo apt-mark hold kubelet kubeadm kubectl


sudo kubeadm join <master-ip>:<master-port> --token <token> --discovery-token-ca-cert-hash sha256:<hash>
