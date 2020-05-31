---
layout : post
---
tags : rancher	

Goal:  build rancher for production-ish

1. setup new server 

|hardware | description |
| -- | --: | 
|CPU | AMD Ryzen 7 2700 Eight-Core Processor |
| RAM | 32GB (64max) |

tbd
/opt as btrv

1. install docker via zypper
 * set DOCKER_OPTS="-g /opt/docker"

1. update NFS server to allow w10 access
 * set to version 4 only with locking service

<pre>
create database bitnami_xxx;
grant all privileges on bitnami_xxx.* to 'bn_user'@'localhost';
grant all privileges on bitnami_xxx.* to 'bn_user'@'%';
flush privileges;
</pre>

1. joomla
1. ghost
 * ghostHost=
1. mediawiki
1. readmine
 * externalDatabase.name
 * exec in pod and cp plugin to /opt/bitnami/redmine/plugins
1. ownCloud
 * owncloudHost=cloud.tcrow.io	 	

Template
<pre>
mariadb.enabled=false
externalDatabase.database=bitnami_xxx
externalDatabase.host=
externalDatabase.user=bn_user
externalDatabase.password=
</pre>

Docker-Registry
<pre>
service.type=NodePort

todo:
1. check / fix c1 system load (+CPU?) - done
1. redmine plugin setup and authentication - defered
1. add aws to cluster
1. check fault tolerances with drain to other node - done
1. setup slack notifier
1. reaserch workflows

1. setup workflow for web publish
