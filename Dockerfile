FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y build-essential nodejs nodejs-legacy npm

RUN npm install -g gulp-cli
RUN npm link gulp

CMD ["gulp", "watch"]
