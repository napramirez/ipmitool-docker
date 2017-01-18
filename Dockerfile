FROM buildpack-deps:jessie-curl
MAINTAINER Nap Ramirez <napramirez@gmail.com>

# Optimization to `apt-get install`
RUN sed -i "s/httpredir/ftp\.sg/g" /etc/apt/sources.list

RUN apt-get update \
  && apt-get install -y ipmitool

ENTRYPOINT ["/usr/bin/ipmitool"]
