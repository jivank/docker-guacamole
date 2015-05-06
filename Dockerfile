FROM phusion/baseimage
RUN apt-get install -y wget
RUN wget https://gist.githubusercontent.com/martezr/2eb2ae4ac447f7534095/raw/c28410012bdb0da74752c51d729852982cc977cd/Guacamole_096_Ubuntu_Installer -o script.sh
RUN bash script.sh

EXPOSE 8080
EXPOSE 443