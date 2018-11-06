sudo docker run -d -p 5000:5000 --restart always \
-v /var/lib/local-registry:/var/lib/registry \
-e REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY=/var/lib/registry \
-e REGISTRY_PROXY_REMOTEURL=https://registry-1.docker.io \
--name local-registry registry:2

sudo mkdir -p /var/lib/local-registry
sudo chcon -Rvt svirt_sandbox_file_t /var/lib/local-registry
