FROM ubuntu:18.04

MAINTAINER Gregoire Jeanmart <gregoire.jeanmart@consensys.net>

USER root

# COMMON
RUN apt-get update && \
    apt-get install -y software-properties-common

# JDK and MAVEN
RUN apt-get update && apt-get install -y \
    openjdk-8-jre \
    openjdk-8-jdk \
    openjfx \
    git \
    maven

# SOLC
RUN add-apt-repository ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install -y solc
