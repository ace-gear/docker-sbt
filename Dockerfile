FROM java:8-jdk
MAINTAINER mercury wonder <wsk@acegear.com>

ENV SBT_VERSION 0.13.11
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

WORKDIR /opt

ADD project

RUN apt-get update && \
 apt-get add unzip && \
 apt-get add curl && \
 curl -sL "https://dl.bintray.com/sbt/native-packages/sbt/${SBT_VERSION}/sbt-${SBT_VERSION}.zip" && \
 unzip sbt-${SBT_VERSION}.zip -d /usr/local && \
 sbt about
 