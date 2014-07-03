# ETCD Container
#
# Version: 0.0.1
# Desctiption: This DockerFil file will create a container with ETCD in it 	
#

FROM      ubuntu
MAINTAINER Keith Tobin <keith.tobin@gmail.com>

ENV PATH /usr/local/go/bin:$PATH 
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
#RUN printf "PATH=/usr/local/go/bin:$PATH" >> ~/.bashrc
#RUN export PATH=/usr/local/go/bin:$PATH
#RUN rm -R /goinstall
RUN mkdir go
RUN mkdir /go/src
RUN mkdir /go/pkg
RUN mkdir /go/bin

#*********PUT SOME ETCD IN THIS CONTAINER**********
RUN apt-get install git -y
RUN mkdir /etcd
RUN git clone https://github.com/coreos/etcd /etcd
RUN (cd /etcd; ./build)
EXPOSE 4001
CMD /etcd/bin/etcd
