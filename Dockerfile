# openhab image
FROM openhab/openhab:2.4.0-armhf-debian

COPY jdk-8u171-linux-arm32-vfp-hflt.tar.gz /

USER root

RUN mkdir /usr/java
RUN cd /usr/java && tar xf /jdk-8u171-linux-arm32-vfp-hflt.tar.gz

RUN update-alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_171/bin/java 1000
RUN update-alternatives --install /usr/bin/javac javac /usr/java/jdk1.8.0_171/bin/javac 1000

ENV JAVA_HOME="/usr/java/jdk1.8.0_171"
