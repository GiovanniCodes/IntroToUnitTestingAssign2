FROM       ubuntu
MAINTAINER Docker

# Installation:
RUN apt-get update && apt-get install -y build-essential python2.7 
RUN apt-get install -y python-setuptools
RUN apt-get install -y python-pip


# Update apt-get sources AND install MongoDB
RUN apt-get update && apt-get install -y mongodb-org

# Create the MongoDB data directory
RUN mkdir -p /data/db

# Create the MongoDB data directory
RUN mkdir -p /data/code

RUN pip install pymongo

# Expose port #27017 from the container to the host
EXPOSE 27017
