---
layout : post
---
tags : k8s rancher

### Hardware and Infrastructure ###


1. Hardware
  - HP 410, 16GB, 500GB SSD, i7CPU @ 2.70GHz (8 core)
  - HP 590, 16GB, 500GB SSD, AMD A12-9800 (4 core)
  - Bell ADLS modem, bridge mode
  - ASUS RT-N66R, DDSN enabled

1. Network external
  - DNS domain tcrow.io from [porkbun](https://porkbun.com), CNAME, ALIAS link to:
  - DDNS domain tcrow.hopto.org from [noip](https://www.noip.com), A link to:
  - Dynamic IP (67.\*.\*.\*) from [Bell](https://mybell.bell.ca)
  - ASUS router, DDNS update Bill IP to noip

|TYPE | HOST | ANSWER |
|-----|------|--------|
|ALIAS | tcrow.io | tcrow.hopto.org |
|CNAME | rsn1.tcrow.io |tcrow.hopto.org |
|CNAME(?) | \*.tcrow.io |tcrow.hopto.org |
 
1. Network internal
  - both computers setup in [bridge](https://www.cyberciti.biz/faq/how-to-install-kvm-on-centos-7-rhel-7-headless-server/)
  - static DHCP for nodes
  - disable firewall
  - disable NetworkManager

1. Virtual Machines
  - increase /var/lib/libvirt mount to 100G
  - use "Step 5: Using cloud images" from bridge setup 

|Node | Description        |
|---------| -----------        |
|rsn1     | rancher single node control, 1vCPU, 3GiB |
|k8s-c1   | Kubernetes control, 1vCPU, 3GiB |
|k8s-w1   | kube worker, 1vCPU, 3GiB |
|k8s-w2   | kube worker, 1vCPU, 3GiB |
|k8s-w3   | kube worker, 1vCPU, 4GiB |
|k8s-w4   | kube worker, monitory, 2vCPU, 4GiB |

#### Rancher Install - Initial ####
  1. follow Rancher [single node]( https://rancher.com/docs/rancher/v2.x/en/installation/single-node/) install, OPTION D-LET'S ENCRYPT CERTIFICATE
  1. test that networking resolves and notes are visible
  1. install docker on each node
  1. setup iSCSI on workers
  1. run below in rsn1
``` bash
docker run -d --restart=unless-stopped  \
      --volumes-from rancher-data \
      -p 80:80 -p 443:443  \
      -v /etc/ssl/certs/domain.cert.pem:/etc/rancher/ssl/cert.pem \
      -v /etc/ssl/certs/private.key.pem:/etc/rancher/ssl/key.pem \
      -v /var/log/rancher/auditlog:/var/log/auditlog \
      -e AUDIT_LEVEL=1 \
      rancher/rancher:latest \
      --no-cacerts
```

  1. setup github authentication
  1. enable helm catalogs
  1. create sandbox 1
  1. enable graphana monitoring
  1. install openebs, efk
  1. enable kibana logging
  1. setup .kube config on mac

#### Rancher Day2 setup ####
 
1. setup KVM-based backup
1. research let's [encrypt](https://www.2stacks.net/blog/rancher-2-and-letsencrypt/)
  - [ssl help](https://medium.com/@superseb/get-your-certificate-chain-right-4b117a9c0fce), [more help](https://www.idealcoders.com/posts/rancher/2018/06/rancher-2-x-and-lets-encrypt-with-cert-manager-and-nginx-ingress/)
  - [upgrade docker](https://rancher.com/docs/rancher/v2.x/en/upgrades/upgrades/single-node-upgrade/)
1. get ingress conroller working (work in progress)
  - may need a front end load balancer for ingress controller
  - host / nodes on same IP confusing (annotations?)
  - read [this](https://akomljen.com/kubernetes-nginx-ingress-controller/)
* ansible needed?
* kibana loggin work to trouble-shoot?  (internal)
* get jupityer hub working
 
