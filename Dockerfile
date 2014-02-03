FROM ubuntu:12.04

MAINTAINER Bruno Tavares

RUN apt-get install -y --force-yes software-properties-common python-software-properties
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java7-installer
RUN apt-get install -y build-essential python-dev python-pip scons
RUN apt-get install -y nodejs
RUN pip install --upgrade pip

CMD /bin/true
