# Dockerfile for Oracle Java 8

FROM ubuntu

MAINTAINER aadebuger <zhvxxh@gmail.com>

#RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update
#RUN apt-get upgrade -y

RUN apt-get install -y  software-properties-common python-software-properties
RUN add-apt-repository ppa:webupd8team/java -y

RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get install -y oracle-java8-installer
