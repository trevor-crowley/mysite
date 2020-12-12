---
date: "2019-07-28T00:00:00Z"
tags: k8s rancher
---
Goal:  plan rancher / kubernetes setup [tricky](https://thenewstack.io/7-key-considerations-for-kubernetes-in-production/)

1. server names
1. Network - Use bridge mode [here]( https://fabianlee.org/2019/04/01/kvm-creating-a-bridged-network-with-netplan-on-ubuntu-bionic/)
1. Create VM [here](https://www.cyberciti.biz/faq/how-to-install-kvm-on-centos-7-rhel-7-headless-server/)
1. Install single node rancher [here](https://rancher.com/docs/rancher/v2.x/en/installation/single-node/single-node-install-external-lb/)
* fix docker issue [here](https://serverfault.com/questions/972551/kvm-guest-and-docker-cannot-connect-to-each-other)
* fix ssh access (done)
* setup audit login
1. Test upgrade (done, added logging)


Todo:
1. Add SSL cert (w/f tcrowl.io)
1. setup ingress (todo)
1. Storage?  [hard to say](https://medium.com/vescloud/kubernetes-storage-performance-comparison-9e993cb27271)
*  - use EBS [here](https://blog.mayadata.io/openebs/running-openebs-on-custom-rancher-cluster)
* Setup EBS / [extra binds](https://rancher.com/docs/rke/latest/en/config-options/services/services-extras/)
1. install fluentd (logging)
1. Testing
1. Test Jupyter with EBS
1. Test Ghost with ?
