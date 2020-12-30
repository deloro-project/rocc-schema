FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive && \
    apt-get install -y \
    	    openjdk-11-jdk-headless \
	    git

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

RUN cd /tmp/ && \
    git clone https://github.com/relaxng/jing-trang.git && \
    cd ./jing-trang && \
    ./ant && \
    mkdir -p /opt/jing-trang && \
    mv ./build/*.jar /opt/jing-trang && \
    cd /tmp/ &&\
    rm -rf ./jing-trang

ENTRYPOINT ["java"]