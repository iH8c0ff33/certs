FROM alpine
MAINTAINER Daniele Monteleone <daniele.monteleone.it@gmail.com>

RUN apk add --update certbot
ADD install.sh /install.sh

EXPOSE 80 443

CMD /install.sh
