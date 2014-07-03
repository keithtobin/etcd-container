Containerized ETCD
==================================

ETCD is a opensource clustered key value store availaible from the guys
at CoreOS (https://coreos.com/) (https://github.com/coreos/etcd). ETCD 
uses Golang and is easy to get running even outside a container. What
we have done here is to package up the golang and ETCD and put them in
a Docker container that make it easy to deploy.

To get started you need docker installed on your system,
to do this you can follow a post on my blog that will help 
get you, http://cloud-guy.net/2014/06/27/upgrade-or-install-docker-1-0/.

You will also need git installed on ubuntu you can do this, "apt-gte install git -y".

You will need to clone my repo, "git clone git@github.com:keithtobin/etcd-container.git".

Change directory "cd etcd-container".

Run "docker build -t myetcd ."

Now you have a contaner lets run it and see etcd working, "".
