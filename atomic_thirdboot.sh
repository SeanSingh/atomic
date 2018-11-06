systemctl enable kubelet.service --now
kubeadm init --use-kubernetes-version "v1.4.3"
kubectl taint nodes --all dedicated-
kubectl apply -f https://git.io/weave-kube
