FROM ubuntu
MAINTAINER Giovanni Gaspard giovannigaspard@gmail.com

RUN apt-get update && apt-get install -y gnupg2
RUN apt-get update
RUN apt-get install -y mongodb-org

VOLUME ["/data/db"]

WORKDIR /data

EXPOSE 27017

CMD ["mongod"]