FROM node:6.10
MAINTAINER tilldettmering@gmail.com

# Copy files
COPY bower.json /
ADD package.json /tmp/package.json

# Install stuff
RUN cd /tmp && npm install -g bower gulp-cli node-gyp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/
RUN bower --allow-root install
