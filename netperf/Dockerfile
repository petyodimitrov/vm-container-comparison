FROM ubuntu:14.04.3
MAINTAINER Petyo Dimitrov
ENV REFRESHED_AT 2015-12-02

RUN echo "deb http://us.archive.ubuntu.com/ubuntu precise main multiverse" >> /etc/apt/sources.list
RUN apt-get -qq update && apt-get -y install netperf

COPY runall.sh /

CMD ["netserver", "-v", "-p", "12865", "-D"]