atomic host status
ansible --version
sudo cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo rpm-ostree pkg-add kubelet kubeadm kubectl kubernetes-cni
