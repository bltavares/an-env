FROM dockerfile/java

MANTAINER Bruno Tavares

RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y build-essential python-dev python-pip scons
RUN apt-get install -y nodejs
RUN apt-get upgrade -y
RUN pip install --upgrade pip

CMD /bin/true
