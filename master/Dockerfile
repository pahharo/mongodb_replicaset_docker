FROM alpine:latest

# Install mongodb
RUN echo 'http://dl-3.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk upgrade --update
RUN apk add --no-cache mongodb

# Create volume
#RUN mkdir /data /data/db /data/db/log
VOLUME ["/data/masterdb"]

# Create DB and Collection
EXPOSE 27017
#CMD ["mongod","--master","--dbpath","/data/masterdb"]
ENTRYPOINT ["tail","-f","/dev/null"]
