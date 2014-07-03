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

You will also need git installed on ubuntu you can do this, "apt-get install git -y".

You will need to clone my repo, "git clone git@github.com:keithtobin/etcd-container.git".

Change directory "cd etcd-container".

Run "docker build -t myetcd ."
This will build a cotaine rcalled myetcd, it mya take a while.

Now you have a contaner lets run it and see etcd working, "docker run -t myetcd".

You will now have a container running with etcd.

One the contane ris running you need to figure it's ip, here is a quick way to get it, "docker inspect myetcd".
This will return you a list of info about the container, look at the Networksettings/IPAddress to get the IP address.
you can now use curl to put and get some data to and from etcd.

Lets put some data in ETCD, curl -L http://127.0.0.1:4001/v2/keys/message

Lets get the date we just put in etcd, curl -L http://127.0.0.1:4001/v2/keys/message

If you have any bugs lets me know at my blog, http://www.cloud-guy.net.
