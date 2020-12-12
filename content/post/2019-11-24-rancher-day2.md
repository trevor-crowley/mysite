---
date: "2019-11-24T00:00:00Z"
tags: rancher
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
1. install SQL on linux for ML - done	
1. setup private docker [reg](https://docs.docker.com/registry/deploying/) - done
1. fix ownCloud filesize limit
1. setup AWS
1. setup rancher workflows for jenkins -> docker -> k8s pub
1. test slack mesage to redmine task
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

fix this:

<pre>
Traceback (most recent call last):
2019-12-01 8:17:39 AM       File "/usr/local/lib/python3.6/dist-packages/tornado/gen.py", line 589, in error_callback
2019-12-01 8:17:39 AM         future.result()
2019-12-01 8:17:39 AM       File "/usr/local/lib/python3.6/dist-packages/jupyterhub/handlers/base.py", line 807, in finish_user_spawn
2019-12-01 8:17:39 AM         await spawn_future
2019-12-01 8:17:39 AM       File "/usr/local/lib/python3.6/dist-packages/jupyterhub/user.py", line 642, in spawn
2019-12-01 8:17:39 AM         raise e
2019-12-01 8:17:39 AM       File "/usr/local/lib/python3.6/dist-packages/jupyterhub/user.py", line 546, in spawn
2019-12-01 8:17:39 AM         url = await gen.with_timeout(timedelta(seconds=spawner.start_timeout), f)
2019-12-01 8:17:39 AM       File "/usr/local/lib/python3.6/dist-packages/kubespawner/spawner.py", line 1740, in _start
2019-12-01 8:17:39 AM         for event in self.events
2019-12-01 8:17:39 AM       File "/usr/local/lib/python3.6/dist-packages/kubespawner/spawner.py", line 1491, in events
2019-12-01 8:17:39 AM         for event in self.event_reflector.events:
2019-12-01 8:17:39 AM       File "/usr/local/lib/python3.6/dist-packages/kubespawner/spawner.py", line 72, in events
2019-12-01 8:17:39 AM         key=lambda x: x.last_timestamp,
2019-12-01 8:17:39 AM     TypeError: '<' not supported between instances of 'datetime.datetime' and 'NoneType'
2019-12-01 8:17:39 AM 
2019-12-01 8:18:05 AM 
</pre>

Done - found [this](https://github.com/jupyterhub/kubespawner/issues/354)
