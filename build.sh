#!/bin/bash
time docker build -t AnsibleShipyard/base-ubuntu-nginx .

echo "to use this docker:"
echo "    docker run -d -P AnsibleShipyard/base-ubuntu-nginx"
echo
echo " then, with the port listed running [docker ps]"
echo "    curl http://localhost:<port>"
echo " should yield an html page response"
echo
echo "to run in interactive mode for debug:"
echo "    docker run -t -i AnsibleShipyard/base-ubuntu-nginx bash"
echo
