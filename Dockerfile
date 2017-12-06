FROM node:6.10
MAINTAINER tilldettmering@gmail.com

# Install stuff
RUN npm install -g bower gulp-cli node-gyp && npm install && bower --allow-root install
