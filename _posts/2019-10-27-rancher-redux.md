---
layout : post
tags : rancher	
---

Goal:  rebuild rancher to work with external subdomain

1. follow [this](https://octoperf.com/blog/2018/06/04/rancher-2-getting-started/), using tmux to run in parallel
 * reset old rancher with [cleanup](https://gist.github.com/superseb/2cf186726807a012af59a027cb41270d)
 * yum update nodes
 * update certs from porkbun:  domain.cert.perm, private.key.pem
 * build control, admin pwd may need to be reset
 * build workers & wait (~10m) 
1. setup kubernets command line
1. how does ingress work? trick :8443 -> Ranch, 443,80 to w8 IP
1. setup [nfs](https://www.cyberciti.biz/faq/centos-fedora-rhel-nfs-v4-configuration/)
 
