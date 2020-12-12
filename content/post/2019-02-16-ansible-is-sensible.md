---
date: "2019-02-16T00:00:00Z"
tags:
- k8s
- ansible
- kvm
- rook
- matallb
---

1. build 8ks-controller, worker1-3 using `create-vm.sh`
  * ssh to root for each host
  * fixed IP 
  * store init version in case of rollback
1. create ansible scripts, based on [k8s on ansible](https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-1-10-cluster-using-kubeadm-on-centos-7)
  * git setup scripts 
  * stash rollback vms for testing
  * suggest install [yaml-vim](https://lornajane.net/posts/2018/vim-settings-for-working-with-yaml)
  * use kube-router instead of weave?
1. copy .kube from cluster to laptop `scp -r ubuntu@k8s-controller1:~/.kube ~`
1. install [metallb](https://metallb.universe.tf/installation/)
  * enable IP range via `kubectl apply -f metallb.yaml`
1. DEFERRED - install [rook](https://earlruby.org/2018/12/using-rook-ceph-for-persistent-storage-on-kubernetes/)
  * create block storage 
  * make rook default storage provider
  * test cluster storage vi ceph on the operator pod , rook-test.yaml
1. setup local storeage [PVC](https://www.weave.works/blog/kubernetes-faq-configure-storage-for-bare-metal-cluster)
  * tbd
