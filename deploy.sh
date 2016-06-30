#!/bin/sh
docker build -t certs_image .
docker create \
  -i -t \
  -p 80:80 \
  -p 443:443 \
  -v /var/certs:/var/certs \
  --name certs \
  certs_image
docker stop proxy
docker start -a certs
docker rm certs
docker start proxy
