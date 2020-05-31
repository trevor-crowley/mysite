---
layout: post
---
tag : [k8s rancher]

To paraphrase Bob Widlar:  
>every idiot can create a single-node kubernetes cluster

High-availiblility, post-install maintenance, and non-terrible bare metal persistance can turn into a full time job.

Let's see if buying into rancher will help.

1. buy a stand-alone server 
 * HP Pavilion Desktop PC (AMD A12-9800 / 1TB HDD / 16GB RAM)
 * enable amd [svm](https://www.qnap.com/en/how-to/faq/article/how-to-enable-intel-vtx-and-amd-svm/)
1. install centos with KVM
 * figure out proper [network model](https://www.cyberciti.biz/faq/installing-kvm-on-ubuntu-16-04-lts-server/)
 * create [bridge](https://www.itzgeek.com/how-tos/mini-howtos/create-a-network-bridge-on-centos-7-rhel-7.html)
 * download rancheros.iso

