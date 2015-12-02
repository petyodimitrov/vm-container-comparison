FROM ubuntu:14.04.3
MAINTAINER Petyo Dimitrov
ENV REFRESHED_AT 2015-12-02

RUN apt-get update -y && apt-get install make build-essential -y
COPY provision.sh /home/testing/
RUN /bin/bash -c /home/testing/provision.sh

COPY runall.sh /home/testing/

WORKDIR /home/testing
CMD ["/home/testing/runall.sh"]