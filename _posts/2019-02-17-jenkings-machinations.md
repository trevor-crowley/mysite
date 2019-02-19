---
layout: post
categories: k8s 
---
Full CI scalable pipeline for a static website?  Totaly warranted.
1. manual process
  * `jekyll.ruby2.5 b`
  * `docker build -t me:mysite .`
  * `docker push me/mysite`
1. setup docker hub [registry](https://cloud.docker.com)
1. setup k8s [auth](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/)
  * cleanup json -> yaml with secrets 
1. follow [this](https://www.blazemeter.com/blog/how-to-setup-scalable-jenkins-on-top-of-a-kubernetes-cluster), using docker hub instead of minicube hack
  * modify emptydir() to nfs resource (reminder to set rw folder access)
  * create [cert](https://illya-chekrygin.com/2017/08/26/configuring-certificates-for-jenkins-kubernetes-plugin-0-12/) for Jenkins k8s plugin
