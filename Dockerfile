FROM phusion/baseimage
RUN apt-get -y update &&\
apt-get -y install wget
RUN wget -q -O - "https://gist.githubusercontent.com/martezr/2eb2ae4ac447f7534095/raw/c28410012bdb0da74752c51d729852982cc977cd/Guacamole_096_Ubuntu_Installer" | bash

EXPOSE 8080
EXPOSE 443