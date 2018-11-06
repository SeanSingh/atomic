sudo rpm-ostree install etcd

echo 'ETCD_LISTEN_CLIENT_URLS="http://0.0.0.0:2379,http://0.0.0.0:4001"' > /etc/etcd/etcd.conf
echo 'ETCD_ADVERTISE_CLIENT_URLS="http://192.168.122.10:2379,http://192.168.122.10:4001"' >> /etc/etcd/etcd.conf

# Download, unpack, and initialize the patched version of easyrsa3.
curl -L -O https://storage.googleapis.com/kubernetes-release/easy-rsa/easy-rsa.tar.gz
tar xzf easy-rsa.tar.gz
cd easy-rsa-master/easyrsa3
./easyrsa init-pki

# Generate a CA. (–batch set automatic mode. –req-cn default CN to use.)
 MASTER_IP=192.168.122.10
 ./easyrsa --batch "--req-cn=${MASTER_IP}@`date +%s`" build-ca nopass

# Generate server certificate and key. (build-server-full [filename]: Generate a keypair and sign locally for a client or server)
 ./easyrsa --subject-alt-name="IP:${MASTER_IP}" build-server-full server nopass

 
