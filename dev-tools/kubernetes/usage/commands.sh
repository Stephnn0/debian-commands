kubelet	
Runs on nodes, manages container lifecycle
Ensures containers are running as per Pod specifications


sudo systemctl status kubelet


sudo journalctl -u kubelet -f


sudo kubelet --config=/var/lib/kubelet/config.yaml --kubeconfig=/etc/kubernetes/kubelet.conf


# =========================================================================
kubeadm	
Cluster setup tool	
Initializes and manages the Kubernetes cluster (control plane & worker nodes)


sudo kubeadm init --pod-network-cidr=192.168.0.0/16


sudo kubeadm join <master-ip>:<port> --token <token> --discovery-token-ca-cert-hash sha256:<hash>


sudo kubeadm reset


sudo kubeadm certs renew all

# =========================================================================
kubectl	
Command-line tool for users	
Interacts with the cluster to manage and manipulate resources


kubectl cluster-info

kubectl get nodes

kubectl version

kubectl get pods --all-namespaces

kubectl get deployments

kubectl get namespaces

kubectl get pods -A

kubectl config view

kubectl config current-context


# code mentor session commands


kubectl get nodes -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints

kubectl describe node k8s-control | grep Conditions -A 5


kubectl get installation default -o yaml

kubectl patch installation default --type=merge -p '{"spec":{"controlPlaneReplicas":1}}'


kubectl get apiservice v3.projectcalico.org -o yaml

kubectl -n calico-apiserver get svc calico-api -o yaml

kubectl -n calico-apiserver get pods --show-labels

kubectl -n calico-apiserver describe pod calico-apiserver-58d8449d8f-s97nr

kubectl patch apiserver default --type=merge -p '{"spec":{"template":{"spec":{"tolerations":[{"key":"node.kubernetes.io/not-ready","operator":"Exists","effect":"NoSchedule"}]}}}}'


kubectl get apiserver default -o yaml

kubectl -n calico-apiserver get deployment calico-apiserver -o yaml



kubectl -n calico-apiserver patch deployment calico-apiserver --patch '{"spec":{"template":{"spec":{"tolerations":[{"key":"node-role.kubernetes.io/master","effect":"NoSchedule"},{"key":"node-role.kubernetes.io/control-plane","effect":"NoSchedule"},{"key":"node.kubernetes.io/not-ready","operator":"Exists","effect":"NoSchedule"}]}}}}'


/home/<user>/calico-manifests/ (or any user-specific directory)
/etc/kubernetes/manifests/
/opt/calico/manifests/
/usr/local/etc/calico/



kubectl delete -f https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/calico.yaml

rm -rf /etc/cni/net.d/*
rm -rf /var/lib/calico/*
rm -rf /var/run/calico/*


kubectl get pods -n calico-system -w
