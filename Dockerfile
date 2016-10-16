# This file is used to build a docker image

FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Get essential packages
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y sudo
RUN apt-get install -y postgresql-client-9.4
RUN apt-get install -y vim

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# The EXPOSE command is used to associate a specified port to enable networking
# between the running process inside the container and the outside world
# (i.e. the host).
EXPOSE 8080
CMD [ "npm", "run", "dev" ]