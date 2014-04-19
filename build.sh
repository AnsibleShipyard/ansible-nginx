#!/bin/bash
docker build -t AnsibleShipyard/base-ubuntu-nginx .

# to use this docker
# docker run -d -P AnsibleShipyard/base-ubuntu-nginx
# then, given that port is the port mapped when you did `docker ps`
#    curl http://localhost:<port>
# should yield an html page response

# to run in interactive mode for debug
# docker run -t -i AnsibleShipyard/base-ubuntu-nginx bash
