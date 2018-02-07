# MongoDB ReplicaSet in Docker

## Dependencies
Docker  
Alpine Linux image for docker
Minimum of three server instances  
MongoDB 2.6 installed and running  
Each server instance must allow TCP traffic from each replica set member over port 27017  
Each server instance hostname must be resolvable from each replica set member  

### Generate MONGODB containers
To generate containers you have to build them.

· Inside master folder:
```bash
# docker build -t mongodb_master .
```
· Inside slave folder:
```bash
# docker build -t mongodb_slave .
```
· Inside arbiter folder:
```bash
# docker build -t mongodb_arbiter .
```

### RUN MongoDB ReplicaSet
Execute the script "run_mongo_replicaset.sh" with two parameters: the master ip in first place, the slave ip in second place and the arbiter ip in third place.
```bash
# ./run_mongo_replicaset.sh <master_ip> <slave_ip> <arbiter_ip>
```
  
It will generate a couple of dockers: one is the master and the other is the slave.

### Remove containers
To remove containers yo can execute the "remove_containers.sh" script.
```bash
# ./remove_containers.sh
```

