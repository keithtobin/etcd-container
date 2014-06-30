# ETCD Container
#
# Version: 0.0.1
# Desctiption: This DockerFil file will create a container with ETCD in it 	
#

FROM      ubuntu
MAINTAINER Keith Tobin <keith.tobin@gmail.com>

#********PUT SOME GO IN THIS CONTAINER************
RUN apt-get update
RUN apt-get install wget -y
RUN cd /
RUN mkdir goinstall
RUN cd /goinstall
RUN wget https://storage.googleapis.com/golang/go1.3.linux-amd64.tar.gz --no-check-certificate
RUN tar -zxvf go1.3.linux-amd64.tar.gz
RUN rm go1.3.linux-amd64.tar.gz
RUN mv go /usr/local
RUN printf "PATH=/usr/local/go/bin:$PATH" >> ~/.bashrc

#*********PUT SOME ETCD IN THIS CONTAINER**********

