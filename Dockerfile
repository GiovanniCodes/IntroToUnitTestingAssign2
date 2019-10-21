FROM ubuntu
MAINTAINER Giovanni Gaspard giovannigaspard@gmail.com

RUN apt-get update && apt-get install -y gnupg2
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0RBB10 &&\
       apt-get update &&\
       apt-get install -y mongodb-org

VOLUME ["/data/db"]

WORKDIR /data

EXPOSE 27017

CMD ["mongod"]