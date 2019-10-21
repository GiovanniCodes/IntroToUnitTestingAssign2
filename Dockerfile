# Parent Dockerfile https://github.com/docker-library/mongo/blob/982328582c74dd2f0a9c8c77b84006f291f974c3/3.0/Dockerfile
FROM mongo:latest

# Modify child mongo to use /data/db2 as dbpath (because /data/db wont persist the build)
RUN docker pull mongo
RUN docker run -d -v /data/db:/data/db --name mymongo mon

# Expose port #27017 from the container to the host
EXPOSE 27017
