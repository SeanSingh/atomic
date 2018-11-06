sudo systemctl enable kubelet.service --now
sudo kubeadm init --use-kubernetes-version "v1.4.3"
sudo kubectl taint nodes --all dedicated-
sudo kubectl apply -f https://git.io/weave-kube
