FROM msemedo/debian8.7upgraded:latest
LABEL maintainer "Marcello DB Semedo"

RUN apt-get -y update && \
	apt-get install -y	software-properties-common \
						build-essential \
						gdb &&\
	add-apt-repository ppa:webupd8team/java && \
	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
	apt-get -y update && \ 
	apt-get install -y oracle-java8-installer && \
	apt-get clean
CMD /bin/bash
