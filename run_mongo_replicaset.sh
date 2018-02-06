docker run --name mongodb_slave -td mongodb_slave:latest

docker run --name mongodb_master -td mongodb_master:latest
sleep 3
mongo --host "172.17.0.6:27017" --eval 'rs.initiate({"_id" : "rs0", "members" : [{"_id" : 0,"host" : "172.17.0.6:27017"}]})'
mongo --host "172.17.0.5:27017" --eval 'rs.slaveOk()'
