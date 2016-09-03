FROM java:8-jdk-alpine
MAINTAINER mercury wonder <wsk@acegear.com>

ENV SBT_VERSION 0.13.12
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

RUN apk add unzip
RUN curl -sL "https://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.zip" | unzip | tar -x -C /usr/local

