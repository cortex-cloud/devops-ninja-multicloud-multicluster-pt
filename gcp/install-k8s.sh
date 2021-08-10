#!/bin/bash
curl https://releases.rancher.com/install-docker/19.03.sh | sh
apt install -y open-iscsi
docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run  rancher/rancher-agent:v2.5.9 --server https://rancher.teles.ninja --token rm4qvk286mmsv2pw28lg2rq6nmpvxx2xs7pgjtcplsjfjnzf8gwfdw --ca-checksum 89c174647f24ca5f9bc61a4ec5a05fbc6ea3645b232f796d0e9ed01ca7f6c1bc --etcd --controlplane --worker
