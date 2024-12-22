kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml

kubectl logs kube-flannel-ds-7xb2s -n kube-flannel
