FROM ubuntu:trusty
RUN apt-get install -y npm nodejs
RUN apt-get install -y git-core
RUN apt-get install -y phantomjs
ADD bashrc /etc/angular-seed.bashrc
RUN cat /etc/angular-seed.bashrc >> /etc/bash.bashrc

WORKDIR /app
VOLUME /app
EXPOSE 8000
