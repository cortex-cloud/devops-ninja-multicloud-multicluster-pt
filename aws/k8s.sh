#!/bin/bash
curl https://releases.rancher.com/install-docker/19.03.sh | sh
docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run  rancher/rancher-agent:v2.5.6 --server https://54.209.9.226 --token jvwddgt2tqvh9x648smqck6x4ll722xz7xxqgvjl2vknpm776f5xbk --ca-checksum 68b40e317f531bdc7ac86e35cebdf1360ae8fecbf088c27ea2ef5d8f5f8443a4 --etcd --controlplane --worker