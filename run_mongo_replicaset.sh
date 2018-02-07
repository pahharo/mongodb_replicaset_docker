docker run --name mongodb_slave -td mongodb_slave:latest

docker run --name mongodb_master -td mongodb_master:latest

docker run --name mongodb_arbiter -td mongodb_arbiter:latest
sleep 3
mongo --host "$1:27017" --eval 'rs.initiate({"_id" : "rs0", "members" : [{"_id" : 0,"host" : "'$1':27017"}]})'
mongo --host "$1:27017" --eval 'rs.add("'$2':27017")'
mongo --host "$1:27017" --eval 'rs.addArb("'$3':27017")'
mongo --host "$2:27017" --eval 'rs.slaveOk()'
