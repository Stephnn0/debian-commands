kubeadm join 192.168.168.52:6443 --token z2n4w1.kdf8s9pc48hy05ha \
	--discovery-token-ca-cert-hash sha256:3f6dd50feb45914fd3ede33188d7081bbc8f11d5d406373d95638399dab8d9e2

sudo systemctl status containerd


sudo crictl ps


kubectl get nodes


# MANAGE NODES
kubectl describe node <name-node>
