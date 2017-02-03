#!/bin/bash
apt-get update
apt -y  install docker.io

# install the kubectl
#curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
#chmod +x ./kubectl
#sudo mv ./kubectl /usr/local/bin/kubectl

docker run -d --restart=unless-stopped -p 8080:8080 rancher/server
