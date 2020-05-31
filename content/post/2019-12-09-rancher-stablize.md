---
layout : post
---
tags : rancher	

Goal:  monitor and stabilize cluster (during maint)

1. w1 seems unstable.  
 * disable [IP6](https://www.thegeekdiary.com/centos-rhel-7-how-to-disable-ipv6/)  and [reset](https://rancher.com/docs/rancher/v2.x/en/cluster-admin/cleaning-cluster-nodes/) node; good now.
 * disable [bridge](https://github.com/moby/moby/issues/24809)
1. w3 drive fills due to logging

