# This file is used to build a docker image

FROM ubuntu:16.04

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app    

# Get essential packages
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    postgresql-client \
    sudo \
    vim

RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash - && \
    apt-get install -y nodejs

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# The EXPOSE command is used to associate a specified port to enable networking
# between the running process inside the container and the outside world
# (i.e. the host).
EXPOSE 8080
# CMD [ "npm", "run", "server:dev" ]