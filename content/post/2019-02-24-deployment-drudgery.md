---
layout : post
---
tags : [k8s prometheus grafana bitnami]

Running bitnami stateful apps on bare-metal k8s?  

The rabbit hole just gets deeper and deeper bigger...

1. test bitnami db access both in and out of cluster 
 * access seems to be an issue -- either DNS or readiness probs
 * install ghost, step by step fix fixed pwds
1. figure out how to use prometheus scapes and grafana
 * stress test cluster
1. can porkbun be connected to no-ip?  
 *Router works for former, not latter
1. setup ingress controller 
 * jenkins, grafana, jhub using 1 IP
1. Mandlebro project (fun)
 * mockup in matlab float vs vp
 * plan with fixed point
1. influx.DB
