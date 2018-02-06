FROM alpine:latest

# Install mongodb
RUN echo 'http://dl-3.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk upgrade --update
RUN apk add mongodb

# Create Volume
VOLUME ["/data/slavedb"]

# Create DB and Collection
EXPOSE 27017
CMD ["mongod", "--slave","--source","172.17.0.3:27017","--dbpath","/data/slavedb"]
