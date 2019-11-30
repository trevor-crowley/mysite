---
layout : post
tags : rancher	
---

Goal:  set production features

1. setup prod env
 - prod, moved c1, rsn to nfs
 - setup NFS on 500G part
 - dev, moved w1-3 (accomodated AMD to Intel CPU) 
 - resoded w1 to back w10
 - tested backup
 - tested drain w10 to w1 and back
 - added chaoscube for random pod delete
1. monitoring
 - slack link
1. setup lab (todo)
 - nfs dev on separate 500G part
 - postgres [install](https://en.opensuse.org/SDB:PostgreSQL), [setup](https://thebuild.com/presentations/not-your-job-pgconf-us-2017.pdf), [config](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-18-04), and [secure](http://www.project-open.com/en/howto-postgresql-port-secure-remote-access)
1. logging (todo)
 - move from W10 to w3 via affinity 
1. setup private docker store
 - setup docker image on 0.0.0.0:5000 , see [docs](https://docs.docker.com/registry/deploying/)
 - add rancher reg
 - update web, jhub to use private dockers (speed)
  
<pre>
docker build -t tcrow.io/mysite .
docker tag tcrow.io/mysite registry.tcrow.io:5000/mysite:latest
docker push registry.tcrow.io:5000/mysite:latest
</pre>
projects:

1. migrate redmine for POC - done
1. migrate wiki - done
1. install SQL on linux for ML
1. setup private docker [reg](https://docs.docker.com/registry/deploying/)
1. setup rancher workflows for jenkins -> docker -> k8s pub
1. fix ownCloud filesize limit
1. test slack mesage to redmine task
1. setup AWS
1. setup remine agile plugin, pain

<pre>
databaseType.postgresql=true	 	
databaseType.mariadb=false	 	
mariadb.enabled=false
externalDatabase.host=
externalDatabase.port=5432
externalDatabase.name=redmine	 	
externalDatabase.user=
externalDatabase.password=
</pre>
