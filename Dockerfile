FROM Scratch
MAINTAINER Docker

# Installation:

# Update apt-get sources AND install MongoDB
RUN apt-get update && apt-get install -y mongodb-org

# Create the MongoDB data directory
RUN mkdir -p /data/db

# Create the MongoDB data directory
RUN mkdir -p /data/code

RUN pip install pymongo

# Expose port #27017 from the container to the host
EXPOSE 27017
