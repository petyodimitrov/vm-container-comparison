FROM ubuntu:14.04.3
MAINTAINER Petyo Dimitrov
ENV REFRESHED_AT 2015-12-02

COPY provision.sh /home/testing/
RUN /bin/bash -c /home/testing/provision.sh

COPY config/*.fio /home/testing/
COPY runall.sh /home/testing/

WORKDIR /home/testing
CMD ["/home/testing/runall.sh"]