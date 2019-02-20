---
layout: post
categories: k8s
---

After much pain with ceph, rook, longhorn, and the k8s docs, I have relagated bare-metal distributed filesystem to the hipster bin for now.

Let's see if NFS will be a more reliable and loyal friend.

1. setup NFS service
  * XFS format partition
  * mount to /mnt/nfs
1. test mount on mac using [CLI](https://www.cyberciti.biz/faq/apple-mac-osx-nfs-mount-command-tutorial/) 
  * mount FS to mount
  * setup rights on server `chmod a+w -R home/`
  * mount NFS to client `sudo mount -t nfs -o resvport,rw {servername}:/mnt/nfs/home/k8s /private/nfs`
1. test mount on [k8s](https://matthewpalmer.net/kubernetes-app-developer/articles/kubernetes-volumes-example-nfs-persistent-volume.html)
  * ensure mount.nfs installed on worker nodes
  * dns [working](https://kubernetes.io/docs/tasks/administer-cluster/dns-debugging-resolution/)?  ping nodes?  no.  DNS not working on subnet.  use IP 
  * test mount on worker via `showmount -e IP`
  * clever way to convert PVC to custom [NFS](https://stackoverflow.com/questions/34282704/can-a-pvc-be-bound-to-a-specific-pv)



