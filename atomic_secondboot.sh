atomic host status
ansible --version
sudo cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

echo "setting --add-registry registry.centos.org" | sudo tee -a /etc/sysconfig/docker
sudo curl -o /etc/systemd/system/kube-apiserver.service -L https://raw.githubusercontent.com/SeanSingh/atomic/master/systemd/kube-apiserver.service
sudo curl -o /etc/systemd/system/kube-controller-manager.service -L https://raw.githubusercontent.com/SeanSingh/atomic/master/systemd/kube-controller-manager.service
sudo curl -o /etc/systemd/system/kube-scheduler.service -L https://raw.githubusercontent.com/SeanSingh/atomic/master/systemd/kube-scheduler.service
