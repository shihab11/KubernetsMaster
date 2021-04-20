#!/bin/sh
sudo apt update
sudo apt install docker.io -y
sudo systemctl enable docker

sudo sed -i '/ swap / s/^/#/' /etc/fstab

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -


sudo bash -c 'cat << EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF'
   

echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" >> ~/kubernetes.list
sudo mv ~/kubernetes.list /etc/apt/sources.list.d
sudo apt update


sudo apt install -y kubeadm=1.18.0-00 --allow-unauthenticated
sudo apt install -y kubectl=1.18.0-00 --allow-unauthenticated --allow-downgrades
sudo apt install -y kubelet=1.18.0-00 --allow-unauthenticated --allow-downgrades
sudo apt-get install -y kubernetes-cni --allow-unauthenticated

