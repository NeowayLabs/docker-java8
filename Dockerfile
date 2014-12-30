FROM neowaylabs/baseimage:latest

MAINTAINER Rodrigo Zanato Tripodi <rodrigo.tripodi@neoway.com.br>

RUN apt-get update && \
    apt-get install -y software-properties-common

RUN add-apt-repository ppa:webupd8team/java && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
    apt-get -y install oracle-java8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
