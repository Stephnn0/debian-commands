

# ================================ uninstall calico =================================
# 1
kubectl delete -f https://docs.projectcalico.org/v3.25/manifests/calico.yaml
kubectl delete -f https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/tigera-operator.yaml

# 2 
kubectl delete namespace calico-system
kubectl delete daemonset calico-node -n kube-system
kubectl delete deployment calico-kube-controllers -n kube-system
kubectl delete networkpolicy --all --all-namespaces
kubectl delete deployment tigera-operator -n kube-system
kubectl delete pod tigera-operator-7d68577dc5-jp9js -n kube-system

kubectl delete namespace tigera-operator -n kube-system

# 3
sudo rm -rf /etc/cni/net.d/*
sudo rm -rf /etc/calico/

# 4 
sudo systemctl disable calico

# 5
sudo rm -rf /var/lib/calico and /cni

# 6
kubectget crd installations.operator.tigera.io
kubectl delete crd installations.operator.tigera.io

# 7
kubectl get crds | grep tigera

kubectl delete crd apiservers.operator.tigera.io
kubectl delete crd imagesets.operator.tigera.io
kubectl delete crd installations.operator.tigera.io
kubectl delete crd tigerastatuses.operator.tigera.io
# ===================================================================================


# ============================= install calico =======================================

