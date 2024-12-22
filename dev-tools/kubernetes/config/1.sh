export KUBECONFIG=/etc/kubernetes/admin.conf

# or

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# =========================================================

kubectl get pods -A

NAMESPACE     NAME                                  READY   STATUS    RESTARTS   AGE
kube-system   coredns-668d6bf9bc-crbdc              0/1     Pending   0          47h
kube-system   coredns-668d6bf9bc-kvjsn              0/1     Pending   0          47h
kube-system   etcd-k8s-control                      1/1     Running   0          47h
kube-system   kube-apiserver-k8s-control            1/1     Running   0          47h
kube-system   kube-controller-manager-k8s-control   1/1     Running   0          47h
kube-system   kube-proxy-slhdc                      1/1     Running   0          47h
kube-system   kube-scheduler-k8s-control            1/1     Running   0          47h



kubectl describe node k8s-control # name of master node


# ===========================================
# =========================================== core dns
# ===========================================
# ===========================================
# ===========================================
kubectl get deployment coredns -n kube-system


kubectl describe pod -l k8s-app=kube-dns -n kube-system


# ====================================== CNI plugin like Calico, Flannel, or Weave
# ======================================
# ======================================
# ======================================
#Calico sets up pod networking, enabling pods to communicate with each other.
#CoreDNS resolves service names to IP addresses so that pods can find and connect to services.

/etc/cni/net.d

kubectl get pods -o wide --all-namespaces
kubectl get pods -n calico-system
kubectl get pods -n calico-system -o wide




kubeadm token create --print-join-command
