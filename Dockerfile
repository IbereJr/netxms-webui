FROM tomcat:8
MAINTAINER Ibere Luiz Di Tizio Jr <ibere.tizio@gmail.com>

ENV VERS=3.3 RELEASE=350
ENV VERSION=${VERS}.${RELEASE} SERVER=127.0.0.1 SESSIONTIMEOUT=120 ENABLEADVANCEDSETTINGS=true

COPY ./docker-entrypoint.sh /

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
    apt-get update && apt-get -y install curl apt-transport-https && \
    curl -L https://www.netxms.org/download/releases/${VERS}/nxmc-${VERSION}.war -o /usr/local/tomcat/webapps/nxmc.war && \
    chmod 755 /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
