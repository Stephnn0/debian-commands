kubectl describe node k8s-control

container runtime network not ready: NetworkReady=false reason:NetworkPluginNotReady message:Network plugin returns error: cni plugin not initialized

root@node:~# systemctl stop apparmor
root@node:~# systemctl disable apparmor 
root@node:~# systemctl restart containerd.service
