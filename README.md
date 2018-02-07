# MongoDB ReplicaSet in Docker

## Dependencies
Docker  
Alpine Linux image for docker

###Generate MONGODB containers
To generate containers you have to build them.

· Inside master folder:
```bash
docker build -t mongodb_master .
```
· Inside slave folder:
```bash
docker build -t mongodb_slave .
```

### RUN MongoDB ReplicaSet
Execute the script "run_mongo_replicaset.sh" with two parameters: the master ip in first place and the slave ip in second place.  
It will generate a couple of dockers: one is the master and the other is the slave.

### Remove containers
To remove containers yo can execute the "remove_containers.sh" script.
